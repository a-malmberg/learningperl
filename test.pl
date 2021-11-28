use strict;
use warnings;
use 5.010;

use List::Util qw(max);
my @arr = (3, 4, 2);
say '8) '. max(@arr);
say scalar @arr;
say @arr;


my @sorted = sort @arr;
say "sorted @sorted";
my @reversed = reverse @sorted;
say "reversed @reversed";

my $median = $arr[int scalar @arr / 2];
say $median;

my @arr1 = splice (@arr, int scalar @arr / 2);

say @arr;
say @arr1;
