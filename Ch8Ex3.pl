#!perl
use strict;
use warnings;
use v5.14;
use utf8;

#my $input = 'Ch7input.txt';
#open(Ch7input,'<', $input) or die "No such file";

while (<>) { #take one input line at a time
    chomp;
    if (/(\b\w*a\b)/) { # find a pattern that matches any word that ends with the letter "a" and use the $1 variable, \b -anchors have 0 width
        say "Matched: |$`<$&>$'|";  #the special match vars
        say "\$1 contains '$1'"
    } else {
        say "No match: |$_|";
        }
    
}
