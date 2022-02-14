#!perl
use strict;
use warnings;
use v5.14;
use utf8;

my %family_name = (
        fred => 'flintstone',
        barney => 'rubble',
        wilma => 'flintstone',
);

say "Enter first name:";
chomp(my $key = <STDIN>);

say "That is $key $family_name{$key}";