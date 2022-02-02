#!perl
use strict;
use warnings;
use v5.14;
use utf8;

total( 1..1000);

sub total {
    my $total_so_far=0;
    foreach(@_) {
        $total_so_far += $_;
        }
    say "The sum of $total_so_far";
}

# or, use a function call within an print statement
# say "The numbers from 1 to 1000 add up to ", total(1..1000)";
