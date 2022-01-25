use strict;
use v5.10;
use utf8;
use warnings;

say 'Type first number:';
chomp(my $firstnumber=<STDIN>);
say 'Type second number:';
chomp(my $secondnumber=<STDIN>);

say "$firstnumber times $secondnumber equals ".($firstnumber*$secondnumber);