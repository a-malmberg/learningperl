use strict;
use warnings;
use v5.10;

print "what is your favorite color? ";
chomp(my $answer= <STDIN>);

given ($answer) {
	when ("purple") 	{ say "me too."}
	when ("green")		{ say "Go!"}
	when ("yellow")		{ say "Slow!"}
	when ("red")		{ say "Stop!"}
	
		when ("blue")		{ say "You may proceed"}
	when (/\w+, no \w+/)	{ die "AUUUUGHHH!"}
	
		when (42)		{ say "Wrong answer" }
	
		when (['gray', 'orange', 'brown', 'black', 'white']) {
		say "I think $answer is pretty ok too";
	}
	
		default {
		say "Are you sure $answer is a real color?";
	}
}