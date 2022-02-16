#!perl
use strict;
use warnings;
use v5.14;
use utf8;

#my $input = 'Ch7input.txt';
#open(Ch7input,'<', $input) or die "No such file";

while (<>) { #take one input line at a time
    chomp;
    if (/(?<name1>\b\w*a\b)/) { # find a pattern that matches any word that ends with the letter "a" and use a named variable
        say "Matched: |$`<$&>$'|";  #the special match vars
        say "Word contains '$+{name1}'" #updated reference
    } else {
        say "No match: |$_|";
        }
    
}
