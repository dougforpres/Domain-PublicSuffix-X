package Domain::PublicSuffix;
use base 'Class::Accessor::Fast';
use strict;
use warnings;

use Data::Validate::Domain ();
use Domain::PublicSuffix::Default ();
use File::Spec ();

our $VERSION = '0.04';

__PACKAGE__->mk_accessors(qw/
    data_file
    tld_tree
    error
    root_domain
    tld
    suffix
/);

=head1 NAME

Domain::PublicSuffix - Parse a domain down to root

=head1 SYNOPSIS

 use Domain::PublicSuffix;

 my $suffix = new Domain::PublicSuffix ({
     'data_file' => '/tmp/effective_tld_names.dat'
 });
 my $root = $suffix->get_root_domain('www.google.com');
 # $root now contains "google.com"
 
 $root = $suffix->get_root_domain('www.google.co.uk');
 # $root now contains google.co.uk

=head1 DESCRIPTION

This module utilizes the "effective_tld_names.dat" provided by Mozilla as a way
to effectively reduce a fully qualified domain name down to the absolute root.
The Mozilla PublicSuffix file is an open source, fully documented format that
shows absolute root TLDs, primarily for Mozilla's browser products to be able
to determine how far a cookie's security boundaries go.

This module will attempt to search etc directories in /usr, /usr/local, and
/opt/local for the effective_tld_names.dat file. If a file is not found, a
default file is loaded from Domain::PublicSuffix::Default, which is current at
the time of the module's release. You can override the data file path by
giving the new() method a 'data_file' argument.

When creating a new PublicSuffix object, the module will load the data file as
specified, and use the internal structure to parse each domain sent to the
get_root_domain method. To re-parse the file, you must destroy and create a new
object, or execute the _parse_data_file method directly, though that is not
recommended.

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

=item new ({ optional data_file })

Instantiate a PublicSuffix object. It is best to instantiate an object
and continue calling get_root_domain instead of continually recreating the
object, as the data file is read and parsed on instantiation.

Can take a data_file argument inside of a hashref, as a fully qualified path,
to override the effective_tld_names.dat file.

=back

=cut

sub new {
    my ( $class, @args ) = @_;
    
    my $self = $class->SUPER::new(@args);
    if ( $args[0] and ref($args[0]) eq 'HASH' and $args[0]->{'dataFile'} ) {
        $self->data_file( $args[0]->{'dataFile'} );
    }
    $self->_parse_data_file();
    
    return $self;
}

=over 4

=item get_root_domain ( $domain )

Given a fully qualified domain name, return the parsed root domain name.
Returns undefined if an error occurs parsing the given domain, and fills
the error accessor with a human-readable error string.

=back

=cut

sub get_root_domain {
	my ( $self, $domain ) = @_;
	
	# Clear meta properties
	foreach ( qw/tld suffix root_domain error/ ) {
	    undef( $self->{$_} );
	}
	
	# Check if domain is valid
	unless ( $self->_validate_domain($domain) ) {
		$self->error('Malformed domain');
		return;
	}
	
	my @domain_array = split(/\./, $domain);
	my $tld = pop(@domain_array);
	unless ( defined $self->tld_tree->{$tld} ) {
		$self->error('Invalid TLD');
		return;
	}
	
	$self->tld($tld);
	$self->suffix($tld) if ( scalar( keys %{$self->tld_tree->{$tld}} ) == 0 );
	
	# Reverse iterate through domain to find effective root
	my $last = $self->tld_tree->{$tld};
	my $effective_root = $tld;
	
	while ( !$self->suffix and scalar(@domain_array) > 0 ) {
		my $sub = pop(@domain_array);
		next if (!$sub);
		
		# check if $sub.$last is a root
		if ( defined $last->{$sub} and scalar(keys %{$last->{$sub}}) == 0 ) {
			$self->suffix( $sub . "." . $effective_root );
			
		} elsif ( defined $last->{'*'} ) {
			# wildcard means everything is an root, but check for exceptions
			my $exception_flag = 0;
			foreach my $sub_check (keys %{$last}) {
				if ($sub_check =~ /^!/) {
					$sub_check =~ s/!//;
					if ($sub eq $sub_check) {
						$exception_flag++;
					}
				}
			}
			if ( $exception_flag > 0 ) {
				# This is is not an root, push it back to the domain
				push(@domain_array, $sub);
				$self->suffix($effective_root);
			} else {
				$self->suffix(join(".", $sub, $effective_root));
			}
			
		} elsif ( defined $last->{'RootEnable'} and !defined $last->{$sub} ) {
			# we have nothing left in the domain string, check
			# if the root we have is enough
			push( @domain_array, $sub );
			$self->suffix($effective_root);
		}
		
		$effective_root = join( '.', $sub, $effective_root );
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
	$self->{'root_domain'} = pop(@domain_array) . "." . $self->suffix;
	
	return $self->root_domain;
}

sub _parse_data_file {
	my ( $self ) = @_;
	
	$self->{'tld_tree'} = {};
    my $data_stream_ref;
    
    # Find an effective_tld_names.dat file
    my @tld_lines;
    my $dat;
    if ( defined $self->data_file and -e $self->data_file ) {
        open( $dat, '<', $self->data_file )
            or die "Cannot open \'" . $self->data_file . "\': " . $!;
        @tld_lines = <$dat>;
        close($dat);
        $data_stream_ref = \@tld_lines;
        
    } else {
        my @paths = (
            File::Spec->catfile(qw/ etc /),
            File::Spec->catpath(qw/ etc /),
            File::Spec->catpath(qw/ usr etc /),
            File::Spec->catpath(qw/ usr local etc /),
            File::Spec->catpath(qw/ opt local etc /),
        );
        foreach my $path (@paths) {
            $path = File::Spec->catfile( $path, "effective_tld_names.dat" );
            if ( -e $path ) {
    	        open( $dat, '<', $path )
    	            or die "Cannot open \'" . $path . "\': " . $!;
    	        @tld_lines = <$dat>;
    	        close($dat);
	            $data_stream_ref = \@tld_lines;
    	        last;
            }
        }
    }

    # If we haven't found one, load the default
    unless ( defined $data_stream_ref ) {
	    $data_stream_ref = Domain::PublicSuffix::Default::retrieve();
    }
    
	foreach ( @{$data_stream_ref} ) {
		chomp;
		
		# Remove comments, skip if full line comment, remove if on-line comment
		next if ( /^\// or /^[ \t]*?$/ );
		s/\s.*//;
		
		# Break down by dots
		my @domain_array = split( /\./, $_ );
		my $last = $self->tld_tree;
		
		if (scalar(@domain_array) == 1) {
			my $sub = pop(@domain_array);
			next if (!$sub);
			
			$last->{$sub} = {} unless ( defined $last->{$sub} );
			$last->{$sub}->{'RootEnable'} = 1;
		}
		
		# Reverse iterate domain array to build hash tree of tlds
		while (scalar(@domain_array) > 0) {
			my $sub = pop(@domain_array);
			$sub =~ s/\s.*//g;
			next if (!$sub);
			
			$last->{$sub} = {} unless ( defined $last->{$sub} );
			$last = $last->{$sub};
		}
	}
}

sub _validate_domain {
	my ($self, $domain) = @_;
	
	my $is_valid = Data::Validate::Domain::is_domain( 
	    $domain, 
	    {
	        'domain_private_tld' => qr/^[a-z0-9]+$/ 
	    }
	);
	return 1 if ($is_valid);
	return 0;
}


### Compatibility

=head1 COMPATIBILITY

For version 0.04, Domain::PublicSuffix went through some code normalization,
causing most methods to undergo a name change. The following methods are
provided to maintain compatibility with older version, but new scripts and
applications should not use these methods.

=over 4

=item getRootDomain

=item dataFile

=item rootDomain

=item _parseDataFile

=item _validateDomain

=back

=cut

sub _parseDataFile {
    my ($self) = @_;
    
    return $self->_parse_data_file();
}
sub getRootDomain {
	my ( $self, $domain ) = @_;
	
	return $self->get_root_domain($domain);
}

sub _validateDomain {
	my ($self, $domain) = @_;
	
	return $self->_validate_domain($domain);
}

sub dataFile {
    my ( $self, $data_file ) = @_;
    
    return $self->data_file($data_file);
}

sub rootDomain {
    my ( $self, $root_domain ) = @_;
    
    return $self->root_domain($root_domain);
}

=head1 SEE ALSO

=over 4

=item * Current List: 

L<http://tinyurl.com/4tgwb9> [mxr.mozilla.org]

=item * Mozilla Documentation: 

L<http://wiki.mozilla.org/Gecko:TLD_Service>

=item * Public Info Site: 

L<http://publicsuffix.org/>

=back

=head1 BUGS

Please report any bugs or feature requests to C<bug-domain-publicsuffix at rt.cpan.org>,
or through the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Domain-PublicSuffix>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

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

Copyright 2008 Nicholas Melnick, C<nick at abstractwankery.com>.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;