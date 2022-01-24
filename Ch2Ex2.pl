use strict;
use warnings;
use v5.14;
use utf8;

say "Enter radius: ";
chomp(my $radius = <STDIN>);
my $circ = 2*3.141592654*$radius;
say $circ;
