package SimpleBBS::Model::Entry;

use Class::Accessor::Lite (
    new => 1,
    ro => [ qw(
        id body created_at
    )],
);

1;
