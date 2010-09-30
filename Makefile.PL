use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Asm::Preproc',
    AUTHOR              => q{Paulo Custodio <pscust@cpan.org>},
    VERSION_FROM        => 'lib/Asm/Preproc.pm',
    ABSTRACT_FROM       => 'lib/Asm/Preproc.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
		'Carp'						=> 0,
		'Class::XSAccessor::Array'	=> 1.08,
		'Data::Dump'				=> 1.17,
		'File::Find'				=> 0,
		'File::Slurp'				=> 9999.13,
		'File::Spec'				=> 0,
        'Test::More' 				=> 0,
		'Text::Template'			=> 1.45,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => [ 'Asm-Preproc-*',
										'*.tmp',
										'*.bak',
									  ]
						   },
);