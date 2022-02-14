#!perl
use strict;
use warnings;
use v5.14;
use utf8;


# find the longest (widest) key
my $longest=0;
foreach my $key (keys %ENV) {
    my $key_length = length ( $key) ;
    $longest = $key_length if $key_length > $longest;
    }
    
foreach my $key (sort keys %ENV) {
    printf "%-${longest}s %s\n", $key, $ENV{$key};
}


# say "PATH is $ENV{PATH}";
#while (($key, $value) = each %ENV) {
#    say "$key  => $value";
    

