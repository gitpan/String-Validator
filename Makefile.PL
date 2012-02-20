use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'String::Validator',
    AUTHOR              => q{John Karr <brainbuz@brainbuz.org>},
    VERSION_FROM        => 'lib/String/Validator.pm',
    ABSTRACT       => 'A Collection of String Validators.',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'gpl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	'Regexp::Common' => 2011121001,
	'Email::Valid' => 0.185,
	'Email::Address' => 1.893,
	'String::Validator::Common' => 0.93,
	'String::Validator::Password' => 0.93,
	'String::Validator::Email' => 0.93,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'String-Validator-*' },

);
