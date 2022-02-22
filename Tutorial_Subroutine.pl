#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from perltutorial.org/perl-subroutine/

# Subroutines are also known as a function or user-defined function
# Subroutines can be loaded from another file using use, do or require statements
# A subroutine can be generated at run-time using the eval() function
# Subroutines can be called directly or indirectly via a reference, a variable or an object
# Subroutines can also be created anonymously and accessed through references

# To define a subroutine, use the following syntax:
# sub NAME PROTOTYPES ATTRIBUTES BLOCK
# the keyword sub is used, followed by the name of the subroutine. Subroutines have their own namespace and use a & sigil
# prototypes tells perl what parameters the subroutine expects
# attributes gives subroutine additional semantics, including locked, method and lvalue
# both prototypes and attributes are optional
# block is where you put the code

# multiple subroutines in Perl can be created by using the keyword "multi", this helps in creating multiple subroutines iwth the same name
# ex. multi Func1($var){statement};
#     multi Func1($var1, $var2){statement1; statement2;}

sub say_something {                             # create the "say_something" subroutine
    say "Hi, this is the first subroutine";
}

&say_something;                                 # call the subroutine - the & is part of the name, but optional when you call the subroutine
say_something();                                # another way to call the subroutine

# the & is required in some cases, for example when you use a reference that refers to the subroutine name: $subref=\&subroutine_name;
# also, when you call the subroutine indirectly by using either &$subref and &{$subref}
# or when you use the subroutine name as an argument of the defined or undefined function

# Subroutine Parameters

# All input parameters to a subroutine are stored in @_, if you want to refer to the nth argument, use $_[n-1] syntax
say " ";
print &sum(1..10), "\n";

sub sum{                    # define the &sum subroutine
    my $total = 0;  
    for my $i(@_) {         # the @_ array is used as an alias of the arguments, therefore if you make any changes to the elements of the @array, the corresponding argument changes as well
        $total += $i;       # when you pass an array or a Hash to a subroutine, you pass all the elements to it - to pass an array or Hash to a subroutine, you must pass a reference
    }
    return $total;          # return the result explicitly
}

# Implicit return value

# A subroutine implicitly returns a value that is the last expression in its body

print &say_hi , "\n";
sub say_hi{
    my $name = 'Bob';
    say "Hi $name";
    $name;                  # the last expression in this subroutine returns $name - that is a string with the value Bob
}

# if you use return to explicitly return a value, the rest of the subroutine is skipped and a value is returned

# Returning undef value

# sometimes it can be useful to return an undefined value from a subroutine so you can distinguish between a failed call and one that returns false or no results
# this example returns an undefined value because a perticular parameter is not supplied:

say " ";
say "Returning undef";
my @a = ();                 # the array is initialized as empty
my $j = min(@a);

if(defined $j){
   print("Min of @a is $j \n");
}else{
   print("A: The array is empty.\n");
}

my @b = (100,12,31);        # the array is initialized with values
my $k = min(@b);

if(defined $k){
  print("B: Min of @b is $k \n");
}else{
   print("The array b is empty.\n");
}

sub min{                                # define the min subroutine
   my $m = shift;                       # returns the first value in the array (100), removes it and shifts the elements to the left, so $m gets 100              
   return undef unless defined $m;      # if $m is undef, returns undef right here
   for (@_){    
      $m = $_ if $m > $_;               # compares each value $_ from @_ to $m to see which is larger
   }
   return $m;                           # explicitly returns $m
}

# Passing parameters to a subroutines

# in general when passing parameters by references it means the the subroutine can change the values of the arguments, the changes take effect after the subroutine ends
# passing parameters by values means the subroutine only works on the copies of the arguments and the values remain intact

say " ";
say "Passing parameters by REFERENCES";

my $a = 10;
my $b = 20;
say "Original values for A: $a, B: $b";

do_something($a,$b);

say "After calling subroutine a = $a, b = $b";

sub do_something{       # change the values of the first and second parameters through the argument array @_
    $_[0] = 1;          # using [] to reference the @_array generates an anonymous reference, which means the original value is changed
    $_[1] = 2;
}

# Passing parameters by values

# if you don't want the subroutine to change the arguments, you need to create lexical variables to store the parameters
# inside the the subroutine, you can manipulate these lexical variables that will not affect the original arguments - this is called passing parameters by values

say " ";
say "Passing parameters by VALUES";

my $c = 10;
my $d = 20;
say "Original values for C: $c, D: $d";
do_something_new($c,$d);

say "After calling subroutine C = $c, D = $d";

sub do_something_new{
    my ($p1,$p2) = @_;      # create new lexical/private variables, passed them values from @_
    $p1 = 1;                # changing the values of the private variables only
    $p2 = 2;
}

# Passing an array to a subroutine

say " ";
say "Passing an ARRAY to a subroutine";

my @a2 = (1,3,2,6,8,4,9);

my $m = &max(\@a2);             # passing a reference (\@a2) to the a2 array to the &max subroutine

say "The max of @a2 is $m";

sub max{
    my $a2ref = $_[0];          # create a lexical variable $a2ref with the values of the array reference stored in the argument array @_
    say $a2ref;
    my $k = $a2ref->[0];        # define $k as the first element in the $a2ref array
    say $k;

    for(@$a2ref){
        $k = $_ if($k < $_);    # set $k to $_ if $_ > current $k
    }
    return $k;
}

# Returning an array from a subroutine

say " ";
say "Returning an ARRAY from a subroutine";

my @c = (1,3,2,6,7);
my @d = (8,4,9);
say "Array C: @c, Array D: @d";

my @e = pops(\@c,\@d);
say ("The last values of the original arrays are: @e");     # returns the last values of both @c and @d which are 7, 9

sub pops{
    my @ret = ();                   # declaring empty array for storing elements that we remove from input arrays

    for my $aref(@_){               # loop over the @_ array to get the corresponding array argument, use pop() function to remove the last element of each array and
        push(@ret, pop @$aref);     # use push() to get it onto the lexical array @ret
    }
    return @ret;                    # return the lexical array @ret
}

# Returning a Hash reference, put together from previous examples

my %months= ( Jan => 1,
	   Feb => 2,
	   Mar => 3,
	   Apr => 4,
	   May => 5,  
	   Jun => 6,
	   Jul => 7,
	   Aug => 8,
	   Sep => 9,
	   Oct => 10,
	   Nov => 11,
	   Dec => 12);

my $monthr = \%months;       # to dereference a Hash you use %$monthr, since an element is a scalar, access through -> like this $monthr->{$key}

say "";
say 'This is a HASH reference';
for(keys %{$monthr}) {                #access all the Hash elements via the reference and display them using the keys to iterate through the Hash
    say ("$_ = $monthr->{$_}");
}

say "Foreach output:";
foreach my $key (keys %{$monthr}) {            # loop through all elements from reference
    my $value = $months{$key};
    say "$key is key, $value is value";
}

# while loop may be more efficient
say "While loop output:";
my $key_new;
my $value_new;

while (($key_new, $value_new) = each (%months)){
    $value_new = $months{$key_new};
    say "$key_new is still key, $value_new is value";
}

# create a sub routine that uses a return value that is still a Hash

my $hash_testr = return_hash_ref(\%months);       # calling the method using the Hash reference

say "Hash test values are:";

for(keys %{$hash_testr}) {                
    say ("$_ has the value $hash_testr->{$_}");
}

sub return_hash_ref {                             # method receives reference
    my $firstArg = $_[0];                         # access the first array element, but leaves @_unchanged
    for(keys %{$_[0]}){                           
      if ($_ eq "Feb") {
        return { $_ => $months{$_}};
      }
      
    }

}
