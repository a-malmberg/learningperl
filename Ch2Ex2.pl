use strict;
use warnings;
use v5.14;
use utf8;

my $pi = 3.141592654;
say "Enter radius: ";
chomp(my $radius = <STDIN>);
my $circ = 2*$pi*$radius;
say $circ;
