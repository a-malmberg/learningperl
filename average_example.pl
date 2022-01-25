use v5.12;
use strict;
use warnings;




while (my $line = <GRADES>) {
	my ($student, $grade) = split(" ", $line);
	$grades{$student} .= $grade . " ";
}


	my $scores = 0;
	my $total = 0;
	my @grades = split(" ", $grades{$student});
	for my $grade (@grades) {
		$total += $grade;
		$scores++;
	}
	my $average = $total / $scores;
	print "$student: $grades{$student}\tAverage: $average\n";
}