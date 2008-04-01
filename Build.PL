use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Domain::PublicSuffix',
    license             => 'perl',
    dist_author         => 'Nicholas Melnick <nick@abstractwankery.com>',
    dist_version_from   => 'lib/Domain/PublicSuffix.pm',
    build_requires => {
        'Test::More'                => 0,
        'Data::Validate::Domain'    => 0,
        'Class::Accessor'           => 0,
        'File::Spec'                => 0,
    },
    add_to_cleanup      => [ 'Domain-PublicSuffix-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
