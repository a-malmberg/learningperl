#!perl
use strict;
use warnings;
use v5.14;
use utf8;
print "Enter width:";
chomp(my $width = <STDIN>);

print "Enter some lines, then press Ctrl-D: \n";
chomp(my @lines = <STDIN>);

print "1234567890" x (($width + 9) / 10), "12345\n";  #ruler line to column 75

foreach (@lines) {
        printf "%${width}s\n",  $_;   
}

# book also suggests
# foreach (@lines {
#  printf "%*s\n", $width, $_}
#)
