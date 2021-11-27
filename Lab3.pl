# (+20) Write a python program that generates four random  between  -50 and  +50 using python’s  random number generator  (RNG)  see the following code (modify as needed )
# import random
# a = 10
# b =100
# x = random.randint(a,b) # (1) returns an integer a <= x <= b
# modify a and b accordingly
# print('random integer == ', x) 
# your code will require 4 statements similar to (1) above

#and displays 
#1.	the four integers
#2.	The maximum integer
#3.	The minimum integer
#4.	The number of even integers  (if x %2 == 0 then x is even)
#5.	The number of odd integers
#6.	The number of integers greater than 0 but less than 50  
#7.	The number of positive integers
#8.	The number of negative integers 
#9.	The average of the smallest and largest integers 
#10.	The average of all four integers 

#EXAMPLE OUTPUT
#If the RNG generated the four integers  22  -8  17  -5 then display 
#1.	The integers are 22  -8  17  -5
#2.	The maximum integer is 22
#3.	The minimum integer is -8
#4.	The number of even integers  is  2 
#5.	The number of odd integers is  2
#6.	The number of integers greater than 0 but less than 50 is 2
#7.	The number of positive integers  2
#8.	The number of negative integers   2 
#9.	The average of the smallest and largest integers  7.0  
#10.	The average of the four integers is 6.5

use strict;
use warnings;
use 5.010;


my $a =-50+ int(1+rand(100));
my $b =-50+ int(1+rand(100));
my $c =-50+ int(1+rand(100));
my $d =-50+ int(1+rand(100));

say "$a, $b, $c, $d";
my @arr = ($a, $b, $c, $d);

use List::Util qw(min max);

say "Largest number: " . max(@arr);
say "Smallest number: " . min(@arr);

my $even = 0;
my $odd = 0;
for (@arr) {
	if ($_ %2 == 0){
		$even++;
	} else {
		$odd++;
	}
}
say "$even even numbers";
say "$odd odd numbers";
 
my $num = 0;
for (@arr) {
	if ($_ >0 and $_ <50){
			$num++;
		
	}
}

say "Numbers greater than 0 but less than 50 are $a";

my $pos = 0;
my $neg =0;
for (@arr) {
	if ($_ >0){
		$pos++;
	} else {
		$neg++;
		
	}
}

say "Numbers greater than 0 are $pos";
say "Numbers less than 0 are $neg";

say "The average of the largest and smallest numbers is: " . (max(@arr)+min(@arr))/2;
say "The average of all four integers is: " . ($a+$b+$c+$d)/4;