use inc::Module::Install;

perl_version '5.010000';

name 're-engine-Lua';
author 'Francois PERRAD <francois.perrad@gadz.org>';

abstract_from 'Lua.pm';
license_from 'Lua.pm';
version_from 'Lua.pm';

# t/
build_requires 'Config'     => 0;
build_requires 'XSLoader'   => 0;
build_requires 'Test::More' => 0;
build_requires 'Test::Warn' => 0;
build_requires 'Test::Exception' => 0;

#tests 't/*.t t/*/*.t';
tests 't/*.t';

auto_install;
WriteAll;
