#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from book

# create a %for all the files that we are requesting where the keys are the  names and the values don't matter (set to 1)
my %do_these;
foreach (@ARGV) {
    $do_these{$_} = 1;
}

# check which files already have the line and remove those from the hash
while (<>) {
    if (/\A## Copyright/i) {
        delete $do_these{$ARGV};
    }   
}

# finally duplicate and add the remaining
@ARGV = sort keys %do_these;
$^I = ".bak";
exit unless @ARGV;
while (<>) {
    if (/\A#!/) {
        $_.="## Copyright () 2022 by Anna\n"
        
    }
    print;
    
}
