BEGIN { %ENV = () }

use strict;
use Test::More tests => 6;
use re::engine::Lua;

ok("Hello, world" !~ /Moose, (world)/);
is($1, undef);
ok("Hello, world" =~ /Hello, (world)/);
is($1, 'world');

no re::engine::Lua;
is(eval '"Hello, world" =~ /(?<=Moose|Mo), (world)/', undef);

#SKIP:
#{
#    skip('no pprivate ?', 1);
if (fork) {
    ok(1);
} 
#}

