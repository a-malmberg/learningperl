#(+25) Provide a python program to determine the parking fees at the airport based on the following time constraints:  

#1.	 Any amount of time less than or equal to one hour, the parking fee is 5.00.  This means if your parked for 5, 15, 55 or 60 minutes you pay $5.00 
#Minutes parked	Hrs*Fee=parking fee
#25 minutes (0 hour and 25 minutes) 	1*5.00
#05 minutes (0 hour and 5 minutes) 	1*5.00
#55 minutes (0 hours and 55 minutes)	1*5.00
#30 minutes (0 hour and 30 minutes) 	1*5.00
#10 minutes (0 hour and 10 minutes) 	1*5.00
#60 minutes (1 hour and 0  minutes) 	1*5.00

#2.	Any amount of time greater than one hour but less than or equal to 5 hours (300 minutes), the parking fee is 4.00 per hour and any fraction thereof.  This means: 
#Minutes parked	Hrs*Fee=parking fee
#65 minutes (1 hour and 5 minutes) 	2*4.00
#95 minutes (1 hour and 35 minutes) 	2*4.00
#120 minutes (2 hours)	2*4.00
#135 minutes (2 hour and 15 minutes) 	3*4.00
#180 minutes (3 hour and 0 minutes) 	3*4.00
#195 minutes (3 hour and 15 minutes) 	4*4.00
#240 minutes (4 hours) 	4*4.00
#260 minutes (4 hours 20 minutes ) 	5*4.00
#300 minutes (5 hours) 	5*4.00

#3.	Any amount of time greater than 5 hours, the parking fee is 2.00 per hour and any fraction.  
#Minutes parked	Hrs*Fee = parking fee
#320 minutes (5 hour and 20 minutes) 	6*2.00
#400 minutes (6 hour and 40 minutes) 	7*2.00
#800 minutes (13 hour and 20 minutes) 	14*2.00
#825 minutes (13 hour and 45 minutes) 	14*2.00
#600 minutes (10 hours)	10*2.00

#Use the following test cases to make sure the results of your code are as expected 
#Minutes parked		Cost 
#60			5
#120			8
#300			20
#301			12 
#240			16
#420			14
#600			20

use warnings;
use strict;
use 5.010;
use POSIX qw/ceil/;

say "Enter time (in minutes): ";
my $minutes = <STDIN>;
my $fee;
my $fee1 = 5;
my $fee2 = 20;
my $hour;

if ($minutes <= 60) {
	$fee = 5;
} elsif ($minutes <= 300) {
		#if ($minutes == 300) {
		#	$fee = 20;
		#}else{
			$hour = ceil ($minutes/60);
			$fee = $hour*4;
			#}
		
} else {
	$hour = ceil ($minutes/60);
	$fee = $hour*2;
	}
say "You owe $fee in parking fees";
			
	