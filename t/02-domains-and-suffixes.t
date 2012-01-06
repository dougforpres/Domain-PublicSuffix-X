#!perl -T

use Test::More;
use Domain::PublicSuffix;
use Net::IDN::Encode;

my $public_suffix = Domain::PublicSuffix->new();

subtest "Good Domain Name Tests" => sub {
# @TEST Domains is list of domain name suffixes to test
# first we test the name by itself and prove that suffix and root domain are invalid
# then we add a name to the start, hopefully making that a valid "registrable" domain - suffix should be original value,
# root_domain should be new value
# finally we add another hostname, making it a subdomain.  Suffix and root_domain should remain same as previous test.
    ok( 1, "We have normality" );
    my $count = 0;
    my $filename = $public_suffix->data_file;

    # Use the data file to test our code
    my $dat;

    open( $dat, '<:encoding(' . $public_suffix->data_file_encoding . ')' , $public_suffix->data_file )
        or die "Cannot open \'" . $public_suffix->data_file . "\': " . $!;
    @tld_lines = <$dat>;
    close($dat);

    for $suffix (@tld_lines) {
		chomp($suffix);
		
		# Remove comments, skip if full line comment, remove if on-line comment
		next if ( $suffix =~ /^\// or $suffix =~ /^[ \t]*?$/ );
		$suffix =~ s/\s.*//;

        $suffix =~ /(\!|\*\.)?(.*)/;

        my $rule = $1;
        my $raw_suffix = Net::IDN::Encode::domain_to_ascii($2);
        my $domain = "testexample.$raw_suffix";
        my $expected_domain = $domain;
        my $expected_suffix = $raw_suffix;

        if ($rule) {
            if ($rule eq '!') {
                # Need to strip off the first label for the suffix
                $expected_domain = $raw_suffix;
                $expected_suffix =~ s/[a-z0-9-]*\.//;
            }
            elsif ($rule eq '*.') {
                $domain = "testexample.sub.$raw_suffix";
                $expected_domain = $domain;
                $expected_suffix = "sub.$expected_suffix";
            }
        }

        test_suffix( $raw_suffix, $domain, $expected_suffix, $expected_domain );
        $count++;
    }
    ok( 1, "We have even more normality" );
    diag( "Total suffixes tested " . $count );
        
    done_testing();
};

sub test_suffix {
    my ( $suffix, $domain, $expected_suffix, $expected_root_domain ) = @_;

    my $expected_root_domain_name = $expected_root_domain || '';
    my $subdomain = "sub.$domain";

    my $suf_root_domain = $public_suffix->get_root_domain($domain);
    my $suf_suffix = $public_suffix->get_suffix($domain);

    my $suf_sub_domain = $public_suffix->get_root_domain($subdomain);
    my $suf_sub_suffix = $public_suffix->get_suffix($subdomain);

    is( $suf_root_domain, $expected_root_domain_name, "Root '$suf_root_domain' doesn't match expected '$expected_root_domain_name' for input '$domain' (suffix='$suffix'/'$expected_suffix')");
    is( $suf_suffix, $expected_suffix, "Suffix '$suf_suffix' doesn't match expected '$expected_suffix' for input '$domain' (suffix='$suffix'/'$expected_suffix')");
    is( $suf_sub_domain, $expected_root_domain_name, "Root '$suf_sub_domain' doesn't match expected '$expected_root_domain_name' for input '$subdomain' (suffix='$suffix'/'$expected_suffix')");
    is( $suf_sub_suffix, $expected_suffix, "Suffix '$suf_sub_suffix' doesn't match expected '$expected_suffix' for input '$subdomain' (suffix='$suffix'/'$expected_suffix')");
}

done_testing();
