#!perl
use strict;
use warnings;
use v5.14;
use utf8;

while (<>) { #take one input line at a time
    chomp;
    if (/Your_Pattern_Goes_Here/) {
        say "Matched: |$`<$&>$'|";  #the special match vars
    } else {
        say "No match: |$_|";
        }
    
}
