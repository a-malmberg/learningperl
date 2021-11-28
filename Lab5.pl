#(+30) Provide a python program which will 
#1.	Populate an array(list) of size 25 with integers in the range -100 (negative 100)   to  +100 inclusive
#2.	Display the array and its length (use the len function) 
#3.	Display the average of all the integers in the array
#4.	Display the number of even integers  (how many)
#5.	Display the number of odd integers  (how many) 
#6.	Display the number of integers > 0   (how many)
#7.	Display the number of integers < 0   (how many) 
#8.	Display the median.  
#NOTE  In sorted order, the median equals the 13th == array[12] element in the array.  Please do not use array[12] to display the median instead consider n/2 or n//2 or a ceil or #floor functions  etc.  That is the median should be calculated using  n 
#9.	Display the integers >= median   (See the : operator as in sub = array[2:6]  know  splice  )
#10.	Display the integers  <  median see the splice operator 
#11.	Ask the user for an integer and print the number of times the integer is in the array 
#HINT: see the count function below
#12.	 Display the maximum integer
#13.	Display the minimum integer
#14.	Display the array in reverse sorted order (largest to smallest) See the sort() and reverse() functions 
#15.	Display the gcd of the largest and smallest integers  (See the lesson for an example ) using python’s gcd function

use warnings;
use strict;
use 5.010;
use List::Util qw(min max sum);

my $i = 25;
my $x;
my @rand;

while ($i >0) {
	$x =-100+ int(1+rand(200));
	push(@rand, $x);
	$i--;
	}
say "2a) Values in the array: @rand";
say "2b) Size of the array: " . scalar @rand;

my $average = (sum(@rand)/25);
say "3) Average value of array: $average";

my $even = 0;
my $odd = 0;
for (@rand) {
	if ($_ %2 == 0){
		$even++;
	} else {
		$odd++;
	}
}

say "4) Numer of even integers: $even";
say "5) Number of odd integers: $odd";

my $pos = 0;
my $neg = 0;
for (@rand) {
	if ($_  > 0){
		$pos++;
	} else {
		$neg++;
	}
}
say "6) Number of positive integers: $pos";
say "7) Number of negative integers: $neg";

my @sorted = sort @rand;
say "Sorted values: @sorted";
say "8) The median is: $sorted[int (scalar @sorted / 2)]";

my @arr1 = splice(@sorted, int scalar @sorted / 2);
say "9) Integers >= median: @arr1"; 
say "10) Integers < median: @sorted";

say "Enter an integer: ";
my $num = <STDIN>;
chomp $num;
my $y = 0;


for (@rand) {
	if ($_  == $num){
		$y++;
	}
}
say "11) The number $num is present $y times in the array.";
say "12) The maximum integer in the array is: " . max(@rand);
say "13) The minimum integer in the array is: " . min(@rand);

my @new_sorted = sort @rand;
my @reversed = reverse @new_sorted;

say "14) The reversed sorted array is: @reversed";

my $a = max(@rand);
my $b = min(@rand);

# Euclid code I found on perlmonks.org
sub gcd {
  my ($a, $b) = @_;
  ($a,$b) = ($b,$a) if $a > $b;
  while ($a) {
    ($a, $b) = ($b % $a, $a);
  }
  return $b;
}

my $gcd_min_max = gcd ($a, $b);
say "15) The GCD using the minimum and maximum numbers is: $gcd_min_max";