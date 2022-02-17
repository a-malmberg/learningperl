#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# based on book version running for 9.4 from cmd line, runs using >perl Ch9Ex4.pl Ch9Ex3.pl
# creates a copy named blah.out, adding copyright after shebang
my $in_fh;
my $out_fh;

my $in = $ARGV[0];
if (! defined $in) {
    die "Usage: $0 filename";
}

my $out = $in;
$out =~ s/(\.\w+)?$/.out/;

if (! open $in_fh, '<', $in) {
    die "Can't open '$in': $!";
}

if (! open $out_fh, '>', $out) {
    die "Can't write '$out': $!";
}

# add copyright line after shebang - seems to work as intended, but of course, does not modify the original, only creates a copy
while (<$in_fh>) {
    
    s/#!perl/#!perl\n## Copyright (C) 2022 by Anna/;
    print $out_fh $_;
}

