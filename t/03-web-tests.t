#!perl -T

use Test::More;
use Domain::PublicSuffix;

my $public_suffix = Domain::PublicSuffix->new();

$public_suffix->allow_local_tld(0);

sub quoted_or_undef {
    my ( $val ) = @_;

    if (defined $val) {
        return '\'' . $val . '\'';
    }
    else {
        return 'undef';
    }
}

sub checkPublicSuffix {
    my ( $test, $expected ) = @_;

    is($public_suffix->get_root_domain($test), $expected, 'Confirm root for ' . quoted_or_undef($test) . ' is ' . quoted_or_undef($expected));
}

subtest "publicsuffix.org/list/test.txt Tests" => sub {
    # These tests are adapted from the publicsuffix.org/list/test.txt file

    # Any copyright is dedicated to the Public Domain.
    # http://creativecommons.org/publicdomain/zero/1.0/

    # NULL input.
    checkPublicSuffix(undef, undef);
    # Mixed case.
    checkPublicSuffix('COM', undef);
    checkPublicSuffix('example.COM', 'example.com');
    checkPublicSuffix('WwW.example.COM', 'example.com');
    # Leading dot.
    checkPublicSuffix('.com', undef);
    checkPublicSuffix('.example', undef);
    checkPublicSuffix('.example.com', undef);
    checkPublicSuffix('.example.example', undef);
    # Unlisted TLD.
    checkPublicSuffix('example', undef);
    checkPublicSuffix('example.example', undef);
    checkPublicSuffix('b.example.example', undef);
    checkPublicSuffix('a.b.example.example', undef);
    # Listed, but non-Internet, TLD.
    checkPublicSuffix('local', undef);
    checkPublicSuffix('example.local', undef);
    checkPublicSuffix('b.example.local', undef);
    checkPublicSuffix('a.b.example.local', undef);
    # TLD with only 1 rule.
    checkPublicSuffix('biz', undef);
    checkPublicSuffix('domain.biz', 'domain.biz');
    checkPublicSuffix('b.domain.biz', 'domain.biz');
    checkPublicSuffix('a.b.domain.biz', 'domain.biz');
    # TLD with some 2-level rules.
    checkPublicSuffix('com', undef);
    checkPublicSuffix('example.com', 'example.com');
    checkPublicSuffix('b.example.com', 'example.com');
    checkPublicSuffix('a.b.example.com', 'example.com');
    checkPublicSuffix('uk.com', undef);
    checkPublicSuffix('example.uk.com', 'example.uk.com');
    checkPublicSuffix('b.example.uk.com', 'example.uk.com');
    checkPublicSuffix('a.b.example.uk.com', 'example.uk.com');
    checkPublicSuffix('test.ac', 'test.ac');
    # TLD with only 1 (wildcard) rule.
    checkPublicSuffix('cy', undef);
    checkPublicSuffix('c.cy', undef);
    checkPublicSuffix('b.c.cy', 'b.c.cy');
    checkPublicSuffix('a.b.c.cy', 'b.c.cy');
    # More complex TLD.
    checkPublicSuffix('jp', undef);
    checkPublicSuffix('test.jp', 'test.jp');
    checkPublicSuffix('www.test.jp', 'test.jp');
    checkPublicSuffix('ac.jp', undef);
    checkPublicSuffix('test.ac.jp', 'test.ac.jp');
    checkPublicSuffix('www.test.ac.jp', 'test.ac.jp');
    checkPublicSuffix('kyoto.jp', undef);
    checkPublicSuffix('c.kyoto.jp', undef);
    checkPublicSuffix('b.c.kyoto.jp', 'b.c.kyoto.jp');
    checkPublicSuffix('a.b.c.kyoto.jp', 'b.c.kyoto.jp');
    checkPublicSuffix('pref.kyoto.jp', 'pref.kyoto.jp');    # Exception rule.
    checkPublicSuffix('www.pref.kyoto.jp', 'pref.kyoto.jp');    # Exception rule.
    checkPublicSuffix('city.kyoto.jp', 'city.kyoto.jp');    # Exception rule.
    checkPublicSuffix('www.city.kyoto.jp', 'city.kyoto.jp');    # Exception rule.
    # TLD with a wildcard rule and exceptions.
    checkPublicSuffix('om', undef);
    checkPublicSuffix('test.om', undef);
    checkPublicSuffix('b.test.om', 'b.test.om');
    checkPublicSuffix('a.b.test.om', 'b.test.om');
    checkPublicSuffix('songfest.om', 'songfest.om');
    checkPublicSuffix('www.songfest.om', 'songfest.om');
    # US K12.
    checkPublicSuffix('us', undef);
    checkPublicSuffix('test.us', 'test.us');
    checkPublicSuffix('www.test.us', 'test.us');
    checkPublicSuffix('ak.us', undef);
    checkPublicSuffix('test.ak.us', 'test.ak.us');
    checkPublicSuffix('www.test.ak.us', 'test.ak.us');
    checkPublicSuffix('k12.ak.us', undef);
    checkPublicSuffix('test.k12.ak.us', 'test.k12.ak.us');
    checkPublicSuffix('www.test.k12.ak.us', 'test.k12.ak.us');

    done_testing();
};

done_testing();
