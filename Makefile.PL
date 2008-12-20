use 5.01000;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 're::engine::Lua',
    AUTHOR        => 'Francois PERRAD <francois.perrad@gadz.org>',
    VERSION_FROM  => 'Lua.pm',
    ABSTRACT_FROM => 'Lua.pm',
    LICENSE       => 'MIT',
    PREREQ_PM     => {
            'Test::Exception'   => 0,
            'Test::Warn'        => 0,
    },
);
