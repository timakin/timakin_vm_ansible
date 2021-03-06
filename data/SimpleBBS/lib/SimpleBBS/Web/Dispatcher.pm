package SimpleBBS::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;
use Data::Dumper;
use SimpleBBS::Model::Entry;

any '/' => sub {
    my ($c) = @_;
    my @entries = map {
        SimpleBBS::Model::Entry->new($_)
    } @{$c->dbh->selectall_arrayref(q[
            SELECT * FROM entries ORDER BY id DESC
        ], { Slice => {} })};
    print Dumper @entries;

    my $counter = $c->session->get('counter') || 0;
    $counter++;
    $c->session->set('counter' => $counter);
    return $c->render('index.tx', {
        counter => $counter,
    });
};

post '/reset_counter' => sub {
    my $c = shift;
    $c->session->remove('counter');
    return $c->redirect('/');
};

post '/account/logout' => sub {
    my ($c) = @_;
    $c->session->expire();
    return $c->redirect('/');
};

1;
