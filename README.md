# NAME

column - optex module for columnar output with pager

# SYNOPSIS

    optex -Mcolumn command ...

Short alias:

    optex -MC command ...

# DESCRIPTION

**column** is a module for the **optex** command that pipes the output
through [App::ansicolumn](https://metacpan.org/pod/App%3A%3Aansicolumn) for columnar formatting and [less](https://metacpan.org/pod/less) for
paging.

The module automatically calculates the number of columns based on the
terminal width (`$COLUMNS`) divided by the column width (default 85
characters).

# EXAMPLES

List files in columns with pager:

    optex -Mcolumn ls -l

Using short alias:

    optex -MC ls -l

# INSTALL

## CPANMINUS

    cpanm App::optex::column

# SEE ALSO

[App::optex](https://metacpan.org/pod/App%3A%3Aoptex), [https://github.com/kaz-utashiro/optex](https://github.com/kaz-utashiro/optex)

[App::optex::column](https://metacpan.org/pod/App%3A%3Aoptex%3A%3Acolumn), [https://github.com/kaz-utashiro/optex-column](https://github.com/kaz-utashiro/optex-column)

[App::ansicolumn](https://metacpan.org/pod/App%3A%3Aansicolumn)

# AUTHOR

Kazumasa Utashiro

# LICENSE

Copyright 2025 Kazumasa Utashiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
