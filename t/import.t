use Test::More tests => 2;
BEGIN {
    require re::engine::Lua;
    re::engine::Lua->import;
    ok(exists $^H{regcomp}, '$^H{regcomp} exists');
    cmp_ok($^H{regcomp}, '!=', 0);
}
