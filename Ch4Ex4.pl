#!perl
use strict;
use warnings;
use v5.14;
use utf8;

greet( "Fred" );
greet( "Barney" );

sub greet {
    state $last_person;
    
    my $name = shift;
    
    printf "Hi $name! ";
    
    if ( defined $last_person ){
        say "$last_person is also here!";
    } else {   
        say "You are the first one here!";
        }
    $last_person = $name;
}