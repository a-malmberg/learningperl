use strict;
use v5.10;
use utf8;
use warnings;


chomp(my $firstnumber=<STDIN>);
say 'Type second number:';
chomp(my $secondnumber=<STDIN>);

say "$firstnumber times $secondnumber equals ".($firstnumber*$secondnumber);