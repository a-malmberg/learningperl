# 	2018FA.CSC.120.0002

#9.	(+5) Write a python program that provides a solution for problem #2 in Quiz 00.  Recall Problem# 2 reads as follows:
# 	To determine the number of seconds in x years, which of the following calculations could you use (assume leap year(s) are not a factor)
#	b.	X*365*24*60*60   correct answer 	(1)

#10.	(+5) Write a Python program that determines cell phone charges  (problem #1 in quiz  00 with the stipulation that the user can use
#	their phone < 300 minutes.   Recall that problem 1 reads as follows:
#	Suppose your cell phone carrier charges you a monthly fee of $30.00 for up to 300 minutes and $0.45 for each additional minute after the 
#	first 300.   Assuming you used your phone for x minutes with x > 300, the total monthly fee would be?
#	If you used your phone for <= 300 minutes then the charge is $30.00 Assume the user enters a positive value for the number of minutes 
#	30 + (x -300) * .45   correct answer 		(1) 


#11.	(+5) Write a Python program that provides a solution for Problem #8 in Quiz 00 Recall the problem read as follows:  
#	Aaron is staying at a hotel that charges $100 per night plus tax for a room.  A tax of 8% is applied to the room rate per day and an 
#	additional one-time fee of $5.00 is charged by the hotel.  Which of the following represents total charge, in dollars, for staying x nights 
#	Correct answer is b 
#	b.	1.08(100*x) + 5    correct answer 		(1)


#9
use strict;
use warnings;
use 5.010;

say "Enter number of years: ";
my $no_yrs = <STDIN>;
chomp $no_yrs;

say "The number of seconds in $no_yrs year(s) is approximately: " . $no_yrs*365*24*60*60;

#10
say "Enter total number of minutes: ";
my $minutes = <STDIN>;
chomp $minutes;

say "Phone charges for $minutes minutes: " . (30+($minutes-300)*0.45);
 
 #11
 say "Enter number of nights: ";
 my $nights = <STDIN>;
 chomp $nights;
 
 say "Total for hotel stay: " . (5+(100*1.08*$nights));
 