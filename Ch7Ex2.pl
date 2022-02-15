#!perl
use strict;
use warnings;
use v5.14;
use utf8;

my $input = 'Ch7input.txt';
open(Ch7input,'<', $input) or die "No such file";

while (<Ch7input>) {
    if (/[Ff]red/) {
        print $_;
    }
    
}

close(Ch7input);