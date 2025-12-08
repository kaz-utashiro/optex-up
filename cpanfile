requires 'perl', '5.014';
requires 'App::optex', '1.00';
requires 'Getopt::EX', '2.1.6';
requires 'App::ansicolumn';

on 'test' => sub {
    requires 'Test::More', '0.98';
};
