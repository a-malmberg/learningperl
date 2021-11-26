
#Write a Python program that will prompt the user for three integers and display ;
#1.	the integers, ;
#2.	their sum, ;
#3.	their product, ;
#4.	the sum raised to the power of the first  integer (use operator **)   ;
#5.	the sum divided by the second  integer (use operator  / )   ;
#6.	The sum divided by the third integer (use operator  // )   NOTE:  // may be referred to  as integer division in the literature ;
#7.	The remainder of the division of sum by the first integer (use operator % ) ;
#8.	maximum using the max function;
#9.	minimum using the min  function;
#10.	average of the three integers  NOTE: use you answer from 2 (sum) do NOT add the numbers again;
#11.	Average of the largest and smallest integers ;
#12.	your name;
#13.	your major; 


use strict;
use warnings;
use 5.010;

say "Enter first number: ";
my $first = <STDIN>;
chomp $first;

say "Enter second number: ";
my $second = <STDIN>;
chomp $second;

say "Enter third number: ";
my $third = <STDIN>;
chomp $third;
say "1) first: $first, second: $second, third: $third";

my $sum = $first+$second+$third;
say '2) Added: ' . $sum;
say '3) Multiplied: ' . ($first*$second*$third);
say '4) '. ($sum**$first);
say '5) '. ($sum/$second);
say '6) '. int($sum/$third);
say '7) '. ($sum%$first);

# use List::UTIL library for max/min function
use List::Util qw(min max);
my @arr = ($first, $second, $third);
my $largest=max(@arr);
say '8) '. $largest;
my $smallest=min(@arr);
say '9) '. $smallest;

say '10) '. ($sum/scalar @arr);
say '11) '. ($largest+$smallest)/2;

say 'Anna Malmberg';
say 'Data Science and Programming Support Services';



