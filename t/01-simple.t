#!perl -T

use Test::More tests => 7;


BEGIN {
	use_ok( 'Domain::PublicSuffix' );
}

my $pubSuf = new Domain::PublicSuffix;

is( ref($pubSuf), 'Domain::PublicSuffix', 'reference-check' );

is(
    $pubSuf->getRootDomain('www.abstractwankery.com'),
    'abstractwankery.com',
    'successful-root-check',
);

is(
    $pubSuf->getRootDomain('www.google.co.uk'),
    'google.co.uk',
    'successful-sub-tld',
);

is(
    $pubSuf->tld,
    'uk',
    'successful-sub-tld-dns',
);

is(
    $pubSuf->suffix,
    'co.uk',
    'successful-sub-tld-suffix',
);

is(
    $pubSuf->error,
    undef,
    'successful-no-error',
);

1;
