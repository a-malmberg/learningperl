use strict;
use warnings;
use v5.14;
use utf8;

my $pi = 3.141592654;
say "Enter radius: ";
chomp(my $radius = <STDIN>);
if ($radius le 0) {
    say 'Radius is 0';
} else{
    my $circ = 2*$pi*$radius;
    say "Radius is $circ";
}


