#!perl
use strict;
use warnings;
use v5.14;
use utf8;

say 'Enter words, then hit Ctrl-D';
chomp(my @words = <STDIN>);
my %count;
my $word;


foreach $word (@words) {
    $count{$word} +=1;     
}

foreach $word (sort keys %count) {
    say "$word was seen $count{$word} times.";
}
