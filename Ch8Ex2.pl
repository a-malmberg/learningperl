#!perl
use strict;
use warnings;
use v5.14;
use utf8;

my $input = 'Ch7input.txt';
open(Ch7input,'<', $input) or die "No such file";

while (<Ch7input>) { #take one input line at a time - from Chapter 7 input text doc
    chomp;
    if (/\w+[a]\b/) { # find a pattern that matches any word that ends with the letter "a" the book suggests \a/b\
        say "Matched: |$`<$&>$'|";  #the special match vars
    } else {
        say "No match: |$_|";
        }
    
}
