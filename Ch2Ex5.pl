use strict;
use v5.10;
use warnings;
use utf8;

say 'Type a string value: ';
my $string=<STDIN>;
say 'Type a number: ';
chomp(my $number=<STDIN>);

say $string x $number;