use v5.12;
use strict;
use warnings;

my $grades = 'C:\Users\amalm\OneDrive\Documents\Perl\PerGit\learningperl\GRADES.txt';
open(GRADES, '<', $grades) or die "Can't open grades: $!\n";
my %grades;
while (my $line = <GRADES>) {
	my ($student, $grade) = split(" ", $line);
	$grades{$student} .= $grade . " ";
}

for my $student (sort keys %grades) {
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