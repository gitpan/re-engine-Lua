
use strict;
use warnings;

use Test::More tests => 1;
use Test::Warn;

TODO: {
local $TODO = "warn from XS";

warning_is { 'aaa' =~ /a/i }
   "flags not supported by re::engine::Lua"
}
