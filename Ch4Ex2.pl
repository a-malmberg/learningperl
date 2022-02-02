#!perl
use strict;
use warnings;
use v5.14;
use utf8;

sub total {
    my $sum;
    foreach (@_) {
        $sum+=$_;
    }
    $sum;
}

sub ave_sub {
    if (@_ ==0) { return}
    my $count = @_;
    my $sum = total(@_);
    $sum/$count;
}

sub above_average {
    my $average = ave_sub(@_);
    my @num;
        foreach my $number (@_) {
            if ($number > $average) {
                push @num, $number;        
            }
            
        }
        @num;
}

my @fred = above_average(1..10);
say "\@fred is @fred";
say "(Should be 6 7 8 9 10)";
my @barney = above_average(100, 1..10);
say "\@barney is @barney";
say "(should be just 100)";
