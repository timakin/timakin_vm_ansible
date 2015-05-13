use strict;
use warnings;
use Test::More;


use SimpleBBS;
use SimpleBBS::Web;
use SimpleBBS::Web::View;
use SimpleBBS::Web::ViewFunctions;

use SimpleBBS::DB::Schema;
use SimpleBBS::Web::Dispatcher;


pass "All modules can load.";

done_testing;
