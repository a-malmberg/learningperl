#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# book version modified to run in IDE
# creates a copy named blah.out with Larry and keeps original with Fred

my $in_fh;
my $out_fh;

# open input file, copy to input variable
my $in = 'Ch9input.txt';
open(Ch9input,'<', $in) or die "No such file";
close(Ch9input);

# set contents of input file to same as output file, name output file same as input.out
my $out = $in;
$out =~ s/(\.\w+)?$/.out/;

# supposed to create a in_fh/out_fh filehandle if it doesn't exist already but threw an error without my for me
# checks that $in is still accessible and copies from in to in_fh or from out_fh to out
if (! open $in_fh, '<', $in) {
   die "Can't open '$in': $!";
}

if (! open $out_fh, '>', $out) {
    die "Can't write '$out': $!";
}

# while statement also throws an error if the in/out filehandles aren't already created
# prints each line to the out_fh

while (<$in_fh>) {
    s/Fred/Larry/gi;
    print $out_fh $_;
}

