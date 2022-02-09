#!perl
use strict;
use warnings;
use v5.14;
use utf8;

say "Enter a list of strings on separate lines and when done hit Ctrl-D.";
chomp(my @strings = <STDIN>);

say "1234567890" x 7, "12345\n";
printf "%20s\n" x @strings, @strings;

# book does it like this:
# foreach @strings {
#    printf "%20s\n", $_;
# }