#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# sort in code point order, print on separate lines
#say 'Enter some lines, then hit Ctrl-D';
#my @lines = sort (<STDIN>);
#say @lines;

# sort in code point order, print on same line
#say 'Enter some lines, then hit Ctrl-D';
#chomp(my @lines = sort (<STDIN>));
#say @lines;

# or more simply
say 'Enter some lines, then hit Ctrl-D';
say sort <STDIN>;