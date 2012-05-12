use Test::More;
use re::engine::Lua;

if ($^V le 'v5.10.1') {
    plan( tests => 2 );
}
else {
    plan( skip_all => "segfault" );
}

my $re = qr/aoeu/;

isa_ok($re, "re::engine::Lua");
is("$re", "/aoeu/");
