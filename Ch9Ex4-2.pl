#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# book version;
$^I = ".bak";

while (<>) {
    if (/\A#!/) {
        $_ .="## Copyright (C) 2022 by Anna\n";
    }
    print;    
    
}


