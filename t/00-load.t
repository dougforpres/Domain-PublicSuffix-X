#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Domain::PublicSuffix' );
}

diag( "Testing Domain::PublicSuffix $Domain::PublicSuffix::VERSION, Perl $], $^X" );
