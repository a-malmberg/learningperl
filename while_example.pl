use strict;
use warnings;
use v5.10;

print "How many tickets have we sold so far? ";
my $before = <STDIN>;

my $sold = $before;
while ($sold < 10000) {
	my $available = 10000 - $sold;
	print "$available tickets are available. How many would you like? ";
	my $purchase = <STDIN>;
	if ($purchase > $available) {
		say "Too many! Try again.";
		$purchase =0;
	}
	$sold += $purchase;
}
say "This show is sold out, please come back later.";