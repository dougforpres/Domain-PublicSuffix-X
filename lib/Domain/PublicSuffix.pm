package Domain::PublicSuffix;
use base 'Class::Accessor::Fast';
use strict;
use warnings;

use Data::Validate::Domain qw();
use Domain::PublicSuffix::Default qw();
use File::Spec qw();

our $VERSION = '0.03';

__PACKAGE__->mk_accessors(qw/
    dataFile
    tldTree
    error
    rootDomain
    tld
    suffix
/);

=head1 NAME

Domain::PublicSuffix - Parse a domain down to root

=head1 SYNOPSIS

 use Domain::PublicSuffix;

 my $pubSuf = new Domain::PublicSuffix (
  dataFile => '/tmp/effective_tld_names.dat'
 );
 my $root = $pubSuf->getRootDomain("www.google.com");
 # $root now contains "google.com"
 
 $root = $pubSuf->getRootDomain("www.google.co.uk");
 # $root now contains google.co.uk

=head1 DESCRIPTION

This module utilizes the "effective_tld_names.dat" provided by Mozilla as a way
to effectively reduce a fully qualified domain name down to the absolute
root. The Mozilla PublicSuffix file is an open source, fully documented
format that shows absolute root TLDs, primarily for Mozilla's browser
products to be able to determine how far a cookie's security boundaries go.

This module will attempt to search etc directories in usr, usr/local, and
/opt/local for the effective_tld_names.dat file. If a file is not found,
a default file is loaded from Domain::PublicSuffix::Default, which is
current at the time of the module's release. You can override the data file
path by giving the new() method a 'dataFile' argument.

When creating a new PublicSuffix object, the module will load the data file
as specified, and use the internal structure to parse each domain sent to
the getRootDomain method. To re-parse the file, you must destroy and create
a new object, or execute the _parseDataFile method directly.

=head1 PUBLIC ACCESSORS

=over 4

=item error()

On unsuccessful parse, contains a human-readable error string.

=item suffix()

Returns the effective tld of the last parsed domain. For the domain
'google.co.uk', this would return 'co.uk'.

=item tld()

Returns the true DNS tld of the last parsed domain. For the domain
'google.co.uk', this would return 'uk'.

=back

=cut

=head1 PUBLIC METHODS

=over 4

=item new ( optional dataFile )

Instantiate a PublicSuffix object. It is best to instantiate an object
and continue calling getRootDomain instead of continually recreating the
object, as the data file is read and parsed on instantiation.

Can take a dataFile argument, as a fully qualified path, to override the
effective_tld_names.dat file.

=back

=cut

sub new {
    my ( $class, @args ) = @_;
    
    my $self = $class->SUPER::new(@args);
    $self->_parseDataFile();
    
    return $self;
}

sub _parseDataFile {
	my ( $self ) = @_;
	
	$self->{tldTree} = {};
    my $dataStreamRef;
    
    # Find an effective_tld_names.dat file
    my @tldLines;
    my $dat;
    if ( defined $self->dataFile and -e $self->dataFile ) {
        open( $dat, '<', $self->dataFile )
            or die "Cannot open \'" . $self->dataFile . "\': " . $!;
        @tldLines = <$dat>;
        close($dat);
        $dataStreamRef = \@tldLines;
        return;
        
    } else {
        my @paths = (
            File::Spec->catfile(qw/ etc /),
            File::Spec->catfile(qw/ etc /),
            File::Spec->catfile(qw/ usr etc /),
            File::Spec->catfile(qw/ usr local etc /),
            File::Spec->catfile(qw/ opt local etc /),
        );
        foreach my $path (@paths) {
            $path = File::Spec->catfile( $path, "effective_tld_names.dat" );
            if ( -e $path ) {
    	        open( $dat, '<', $path )
    	            or die "Cannot open \'" . $path . "\': " . $!;
    	        @tldLines = <$dat>;
    	        close($dat);
	            $dataStreamRef = \@tldLines;
    	        return;
            }
        }
    }
    
    # If we haven't found one, load the default
    unless ( defined $dataStreamRef ) {
	    $dataStreamRef = Domain::PublicSuffix::Default::retrieve();
    }
    
	foreach ( @{$dataStreamRef} ) {
		chomp;
		
		# Remove comments, skip if full line comment, remove if on-line comment
		next if (/^\// or /^[ \t]*?$/);
		s/\s.*//;
		
		# Break down by dots
		my @domainArray = split(/\./, $_);
		my $last = $self->tldTree;
		
		if (scalar(@domainArray) == 1) {
			my $sub = pop(@domainArray);
			next if (!$sub);
			
			$last->{$sub} = {} unless (defined $last->{$sub});
			$last->{$sub}->{RootEnable} = 1;
		}
		
		# Reverse iterate domain array to build hash tree of tlds
		while (scalar(@domainArray) > 0) {
			my $sub = pop(@domainArray);
			$sub =~ s/\s.*//g;
			next if (!$sub);
			
			$last->{$sub} = {} unless (defined $last->{$sub});
			$last = $last->{$sub};
		}
	}
}

=over 4

=item getRootDomain ( $domain )

Given a fully qualified domain name, return the parsed root domain name.
Returns undefined if an error occurs parsing the given domain, and fills
the error accessor with a human-readable error string.

=back

=cut

sub getRootDomain {
	my ( $self, $domain ) = @_;
	
	# Clear meta properties
	foreach ( qw/tld suffix rootDomain error/ ) {
	    undef( $self->{$_} );
	}
	
	# Check if domain is valid
	unless ( $self->_validateDomain($domain) ) {
		$self->error('Malformed domain');
		return;
	}
	
	my @domainArray = split(/\./, $domain);
	my $tld = pop(@domainArray);
	unless ( defined $self->tldTree->{$tld} ) {
		$self->error('Invalid TLD');
		return;
	}
	
	$self->tld($tld);
	$self->suffix($tld) if ( scalar(keys %{$self->tldTree->{$tld}}) == 0 );
	
	# Reverse iterate through domain to find effective root
	my $last = $self->tldTree->{$tld};
	my $effectiveRoot = $tld;
	
	while ( !$self->suffix and scalar(@domainArray) > 0 ) {
		my $sub = pop(@domainArray);
		next if (!$sub);
		
		# check if $sub.$last is a root
		if ( defined $last->{$sub} and scalar(keys %{$last->{$sub}}) == 0 ) {
			$self->suffix( $sub . "." . $effectiveRoot );
			
		} elsif ( defined $last->{'*'} ) {
			# wildcard means everything is an root, but check for exceptions
			my $exceptionFlag = 0;
			foreach my $subCheck (keys %{$last}) {
				if ($subCheck =~ /^!/) {
					$subCheck =~ s/!//;
					if ($sub eq $subCheck) {
						$exceptionFlag++;
					}
				}
			}
			if ( $exceptionFlag > 0 ) {
				# This is is not an root, push it back to the domain
				push(@domainArray, $sub);
				$self->suffix($effectiveRoot);
			} else {
				$self->suffix(join(".", $sub, $effectiveRoot));
			}
			
		} elsif ( defined $last->{RootEnable} and !defined $last->{$sub} ) {
			# we have nothing left in the domain string, check
			# if the root we have is enough
			push( @domainArray, $sub );
			$self->suffix($effectiveRoot);
		}
		
		$effectiveRoot = join(".", $sub, $effectiveRoot);
		$last = $last->{$sub};
	}
	
	# Leave if we still haven't found an effective root
	if ( !$self->suffix ) {
		$self->error('Domain not valid');
		return;
	}
	
	# Check if we're left with just an root
	if ( $self->suffix eq $domain ) {
		$self->error('Domain is already root');
		return;
	}
	
	# Set root domain to one step below effective root.
	$self->{rootDomain} = pop(@domainArray) . "." . $self->suffix;
	
	return $self->rootDomain;
}

sub _validateDomain {
	my ($self, $domain) = @_;
	
	my $isValid = Data::Validate::Domain::is_domain( 
	    $domain, 
	    {
	        domain_private_tld => qr/^[a-z0-9]+$/ 
	    }
	);
	return 1 if ($isValid);
	return 0;
}

=head1 SEE ALSO

=over 4

=item  Current List: http://lxr.mozilla.org/mozilla/source/netwerk/dns/src/effective_tld_names.dat?raw=1

=item  Mozilla Documentation: http://wiki.mozilla.org/Gecko:TLD_Service

=item  Public Info Site: http://publicsuffix.org/

=back

=head1 BUGS

Please report any bugs or feature requests to C<bug-domain-publicsuffix at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Domain-PublicSuffix>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Domain::PublicSuffix


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Domain-PublicSuffix>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Domain-PublicSuffix>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Domain-PublicSuffix>

=item * Search CPAN

L<http://search.cpan.org/dist/Domain-PublicSuffix>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2008 Nicholas Melnick, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;