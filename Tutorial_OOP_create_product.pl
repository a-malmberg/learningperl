#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from perltutorial.org/perl-oop

use Tutorial_OOP_Product;

my $iphone = Product->new({                             # call the new method and get an object $iphone, passed a Hash reference to the new() method containing
                                                        # serial, name and price
                            serial =>"100",
                            name => "iPhone 5",
                            price => 650.00});

my $nexus = Product->new({
                            serial =>"101",
                            name => "Nexus",
                            price => 299.00});

print $iphone->to_string;
print $nexus->to_string;
