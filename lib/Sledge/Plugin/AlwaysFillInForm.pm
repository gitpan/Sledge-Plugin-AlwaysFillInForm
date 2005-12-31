package Sledge::Plugin::AlwaysFillInForm;

use strict;
use vars qw($VERSION);
$VERSION = '0.02';

sub import {
    my $class = shift;
    my $pkg   = caller;

    $pkg->register_hook(BEFORE_DISPATCH => sub {
        my $self = shift;
        $self->load_fillin_form unless $self->is_post_request;
    });
}

1;
__END__

=head1 NAME

Sledge::Plugin::AlwaysFillInForm - Always enable HTML::FillInForm plugin for Sledge

=head1 SYNOPSIS

  use Sledge::Plugin::AlwaysFillInForm;

=head1 DESCRIPTION

Sledge::Plugin::AlwaysFillInForm always enable HTML::FillInForm, also GET Request.

=head1 AUTHOR

MATSUNO Tokuhiro E<lt>tokuhiro at mobilefactory.jpE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Bundle::Sledge>

=cut
