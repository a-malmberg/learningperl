#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# can't seem to get this to work from cmd line using perl Ch5Ex1.pl
# enter one string on each line and then ctrl-d to run it
# works because print is looking for list of strings to print because of reverse in list context;
# reverse is looking for a list of strings to reverse because of the <> list context
# <> returns a list of all the lines from all the files chosen
print reverse <>;
