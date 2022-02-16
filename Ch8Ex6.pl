#!perl
use strict;
use warnings;
use v5.14;
use utf8;


while (<>) { #take one input line at a time
    chomp;
    if (/\w*\s$/) { # match any line that ends in white space other than newline, book does /\s\z/
        say "Input: '$_'.";
    } else {
        say "No match: |$_|";
        }
    
}
