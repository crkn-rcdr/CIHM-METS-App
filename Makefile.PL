use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'CIHM::METS::App',
    AUTHOR           => q{Russell McOrmond <russell.mcormond@canadiana.ca>},
    VERSION_FROM     => 'lib/CIHM/METS/App.pm',
    ABSTRACT_FROM    => 'lib/CIHM/METS/App.pm',
    LICENSE          => 'Artistic_2_0',
    PL_FILES         => {},
    "EXE_FILES" => [
      "bin/mets"
    ],
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'MooseX::App'              => 0,
	'Try::Tiny' => 0,
	'Data::Dumper' => 0,
	'Module::Load::Conditional' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'CIHM-METS-App-*' },
);
