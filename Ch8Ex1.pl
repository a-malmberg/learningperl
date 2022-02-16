#!perl
use strict;
use warnings;
use v5.14;
use utf8;

while (<>) { #take one input line at a time - input the string "beforematchafter" to be matched
    chomp;
    if (/match/) { #find the word "match"
        say "Matched: |$`<$&>$'|";  #the special match vars
    } else {
        say "No match: |$_|";
        }
    
}
