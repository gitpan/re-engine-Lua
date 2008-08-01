use strict;

use Test::More tests => 3;
use Test::Exception;

use re::engine::Lua;

throws_ok { "aaa" =~ /(.)(./ } '/unfinished capture/', 'unfinished capture';

throws_ok { "aaa" =~ /a[0-/ } '/malformed pattern/', 'malformed pattern';

throws_ok { "aaa" =~ /%b[/ } '/unbalanced pattern/', 'unbalanced pattern';

