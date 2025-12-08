package App::optex::column;

our $VERSION = "0.01";

=encoding utf-8

=head1 NAME

column - optex module for columnar output with pager

=head1 SYNOPSIS

    optex -Mcolumn command ...

Short alias:

    optex -MC command ...

=head1 DESCRIPTION

B<column> is a module for the B<optex> command that pipes the output
through L<App::ansicolumn> for columnar formatting and L<less> for
paging.

The module automatically calculates the number of columns based on the
terminal width (C<$COLUMNS>) divided by the column width (default 85
characters).

=head1 EXAMPLES

List files in columns with pager:

    optex -Mcolumn ls -l

Using short alias:

    optex -MC ls -l

=head1 INSTALL

=head2 CPANMINUS

    cpanm App::optex::column

=head1 SEE ALSO

L<App::optex>, L<https://github.com/kaz-utashiro/optex>

L<App::optex::column>, L<https://github.com/kaz-utashiro/optex-column>

L<App::ansicolumn>

=head1 AUTHOR

Kazumasa Utashiro

=head1 LICENSE

Copyright 2025 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

use v5.14;
use warnings;

1;

__DATA__

define WIDTH  85
define COLS   WIDTH/:DUP:1:GE:EXCH:1:IF
define COLUMN ansicolumn --bs heavy-box --cm BORDER=L13 -DP -C COLS
define PAGER  less +Gg
define FILTER COLUMN|PAGER

option default -Mutil::filter --of='FILTER'
