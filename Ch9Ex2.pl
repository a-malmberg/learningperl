#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# version running w/o cmd line, creates a copy named .bak and changes original

my $input = 'Ch9input.txt';
open(Ch9input,'<', $input) or die "No such file";
close(Ch9input);

{
   local @ARGV = ($input);

   local $^I= ".bak";

   while (<>) {

        s/Fred/Larry/gi;
        print;
 }
}

