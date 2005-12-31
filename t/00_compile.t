use strict;
use Test::More tests => 1;

sub register_hook { 'dummy function for test' }
BEGIN { use_ok 'Sledge::Plugin::AlwaysFillInForm' }
