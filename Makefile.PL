use 5.008008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Domain::PublicSuffix',
    VERSION_FROM      => 'lib/Domain/PublicSuffix.pm', # finds $VERSION
    PREREQ_PM         => {
        'Test::More'                => 0,
        'Data::Validate::Domain'    => 0,
        'Class::Accessor::Fast'     => 0,
        'File::Spec'                => 0,
    },
    EXE_FILES         => [ 'bin/get_root_domain' ],
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/Domain/PublicSuffix.pm', # retrieve abstract from module
       AUTHOR         => 'Nicholas Melnick <nick@abstractwankery.com>') : ()),
);
