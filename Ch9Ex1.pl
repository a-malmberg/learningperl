#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# match three consecutive copies of whatever is currently contained in $what

# my $what ='fred|barney';

# /($what){3}/
# once $what has been interpolated, this gives a pattern resembling / (fred|barney){3}/
# without the parentheses, the pattern would be something like /fred|barney{3}/ which is the same as /fred|barneyyyy/
# no practical example given