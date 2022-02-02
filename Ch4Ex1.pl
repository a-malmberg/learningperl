#!perl
use strict;
use warnings;
use v5.14;
use utf8;

sub total {
    my $total_so_far=0;
    foreach(@_) {
        $total_so_far += $_;
        }
    $total_so_far;
}

my @fred = qw{ 1 3 5 7 9};
my $fred_total = total(@fred);
say "The total of \@fred is $fred_total.";
say "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
say "The total of those numbers is $user_total.";
