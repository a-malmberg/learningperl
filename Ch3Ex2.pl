#!perl
use strict;
use warnings;
use v5.14;
use utf8;

#say 'Enter some lines, then hit Ctrl-D';
#my @lines = <STDIN>;
#say reverse @lines;

my @names = qw( fred betty barney dino wilma pebbles bamm-bamm );
say 'Enter some numbers between 1 and 7, then hit CTRL-D:';
chomp(my @index = <STDIN>);
foreach (@index) {
    say"$names[ $_-1 ]";
}
