package App::optex::C;

our $VERSION = "0.01";

=encoding utf-8

=head1 NAME

C - Short alias for App::optex::column

=head1 SYNOPSIS

    optex -MC command ...

=head1 DESCRIPTION

B<C> is a short alias module for L<App::optex::column>.

=head1 SEE ALSO

L<App::optex::column>

=cut

use v5.14;
use warnings;

use App::optex::column;

# Redirect DATA to column's DATA
*DATA = *App::optex::column::DATA;

1;
