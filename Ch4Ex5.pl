#!perl
use strict;
use warnings;
use v5.14;
use utf8;

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );

sub greet {
    state @name_list;
    
    my $name = shift;
    
    printf "Hi $name! ";
    
    if ( @name_list ){
        say "I have also seen: @name_list!";
    } else {   
        say "You are the first one here!";
        }
    push @name_list, $name;
}