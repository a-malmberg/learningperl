#!perl
use strict;
use warnings;
use v5.14;
use utf8;

my $input = 'Ch7input.txt';
open(Ch7input,'<', $input) or die "No such file";

while (<Ch7input>) {
    if (/fred/ and /wilma/) { #also &&
        print $_;
    }
    
}

close(Ch7input);