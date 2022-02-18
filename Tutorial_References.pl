#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from perltutorial.org/perl-reference

# general syntax of references
# there are two important rules:
# 1) to create a reference variable or subroutine, you use the unary backslash operator (\) in front of the variable or subroutine name
# Eg: $foo = \$bar;
# 2) to dereference a reference you prefix $ to a scalar, @ to an array, % to a % and & to a subroutine
# Eg: $$foo;

# Scalar References
my $x = 10;     # scalar variable initialized to 10
my $xr = \$x;   # reference that refers/points to $x.
# use ${$xr} or $$xr to dereference the reference $xr

say "";
say 'This is a SCALAR reference';
say ("$x");     # original x (10)
say ("$$xr");   # original dereference (10)

$$xr = $$xr * 2;     # change $x via $xr

say ("$x");     # 20
say ("$$xr");   # 20
say ("$xr");    # SCALAR (0x2cbeffc) - SCALAR means a scalar reference, if you have an array or Hash reference, you will get ARRAY and HASH
                # a reference stores the memory location of the object it refers to in 0x2cbeffc - this is the memory location of the scalar $x (may differ)

# Array references
my @a = (1..5);             # defining an array of integers from 1-5
my $ar = \@a;               # defining a reference to the array @a

say "";
say 'This is an ARRAY reference';
my $i = 0;                  
for(@$ar) {                 # dereferenced the reference $ar by using @$ar
    say ("$ar->[$i++]");    # refer to each element in the array, could also be written as ${$ar}[0]
}                           # you can also apply array functions such as pop(), push(), shift(), unshift(), sort() etc.

# HASH references
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
my$monthr = \%months;       # to dereference a Hash you use %$monthr, since an element is a scalar, access through -> like this $monthr->{$key}

say "";
say 'This is a HASH reference';
for(keys %$monthr) {                #access all the Hash elements via the reference and display them using the keys to iterate through the Hash
    say ("$_ = $monthr->{$_}");
}

# Anonymous References

# Anonymous references refer directly to the data without creating variables
#       to get an array reference, use [] instead of ()
#       to get a Hash reference, use {} instead of ()

say "\n";
say 'This is an ANONYMOUS ARRAY reference';
my $ar2 = [1..5];

for(@$ar2) {
    print("$_ ");    # 1 2 3 4 5
}

say "\n";
say 'This is an ANONYMOUS HASH reference';
my $address = { "building" => 1000, 
                "street" => "ABC street", 
                "city"   => "Headquarter",
                "state" => "CA", 
                "zipcode" => 95134,
                "country" => "USA" 
              };

print $address->{building}. " ";
print $address->{street};

# Symbolic References

# A symbolic reference is the use of a scalar value as a string, which in turn gives a variable its name

# say "\n";
# say 'This is a SYMBOLIC reference';

# my $foo3 = "bar";        # declare the variable $foo with the string value "bar"
# $$foo3 = "whatever";     # dereference a non-existent reference and set the value to "whatever" - behind the scenes, Perl created a new reference variable called $bar,
                        # which is why we can see the value of $bar in the print () function if we do not use the STRICT pragma - this can cause problems if you don't expect it

# print $$foo3 , "\n"; # whatever
# print $bar, "\n"; # whatever

# Autovivification

# Autovivification creates a reference variable automatically when you dereference an undefined value
# If you dereference a defined value, which is not a reference to propery type, Perl will create a symbolic reference - that is autovivification creates and expanse the
# datastructure at the first use. This applies to scalars, arrays and Hashes.

say "\n";
say 'This is a AUTOVIVIFICATION';

my $foo2->{address}->{building} = 1000;     # because $foo2 was being used as a Hash reference, creating a Hash with a key as the address, Perl created a new Hash reference variable $foo2
                                            # additionally, the $foo->{address{ was also being used as a Hash reference, so perl also created a new Hash reference variable

print $foo2, "\n";                          # HASH(0x3bad24)
print $foo2->{address}, , "\n";             # HASH(0x3bae04)
print $foo2->{address}->{building},"\n";    # 1000