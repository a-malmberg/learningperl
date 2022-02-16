#!perl
use strict;
use warnings;
use v5.14;
use utf8;

#my $input = 'Ch7input.txt';
#open(Ch7input,'<', $input) or die "No such file";

while (<>) { #take one input line at a time
    chomp;
    if (/(\b\w+a\b) (.{0,5})/xs) { # match a word ending in a plus up to five characters in a separate capture variable, /x allows for whitespace inside the pattern /s match whitespace
        say "Matched: |$`<$&>$'|";  #the special match vars
        say "Word contains '$1' and '$2'" #updated reference
    } else {
        say "No match: |$_|";
        }
    
}
