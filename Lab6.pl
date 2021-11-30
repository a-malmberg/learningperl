#(+30) Write a python program per the following specifications:
#1.	Populate an array(list) of size 50 randomly with only integers 0 and 1 
#2.	Repeat step1  n = 1000 times using either a while loop or a for loop 
#At this point you should have a total of 50000 observations  
#3.	Display the number of 0’s 	(use the count() function from prior labs) 
#4.	Display the number of 1’s 	(use the count() function from prior labs)
#5.	Using the Binomial distribution formulas 
#a.	Display the expected mean (average) of the 1’s  
#b.	 Calculate and display the standard deviation (SD) 
#NOTE: sd should be  > 100
#c.	Display the range as follows:   mean + SD  mean - SD
#6.	Answer the question:  is the total number of 1’s from 4 above. within the range as calculated in 5.c by printing 
#		‘Yes’ if it is within the range calculated in 5c 
#		‘No’   if it is not 
	
use warnings;
use strict;
use 5.010;

my @rand;
#my $i = 50;
#my $x;
#$while ($i >0) {
#	$x =int(rand(2));
#	push(@rand, $x);
#	$i--;
#	}
#say "2a) Values in the array: @rand";


# that doesn't work! runs out of memory...

@rand = map { int rand(2) } ( 0...49 );
say scalar @rand;
say "1) Values in the array: @rand";

my $j = 1000;
my @arr;

while ($j>0) {
	@rand = map { int rand(2) } ( 0..49 );
	push(@arr, @rand);
	$j--;
}
say "2) total entries in array: " . scalar @arr;

my $zeros = 0;
my $ones = 0;

for(@arr) {
	if ($_ ==0){
		$zeros++;
	} else {
		$ones++;
	}
}
say "3) Number of zeros: $zeros";
say "4) Number of ones: $ones";
