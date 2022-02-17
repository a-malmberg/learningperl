#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# book version running from cmd line, runs using >perl Ch9Ex2-2.pl Ch9input.txt
# creates a copy named blah.out with Larry and keeps original with Fred
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

# replace every Fred with Wilma and Wilma with Fred
# using a pipe and $1/$2 does not work since it would always be $1
while (<$in_fh>) {
    
    s/Fred/\0/gi;       # replace all Fred with NUL
    s/Wilma/Fred/gi;    # replace all Wilma with fred
    s/\0/Wilma/g;       # replace all NUL with Wilma
    print $out_fh $_;
}

