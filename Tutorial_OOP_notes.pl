#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from perltutorial.org/perl-oop

# Object

# an object is a single entity that combines both data and code
# - actions and methods describe what it can do, it is the code part of the object
# - attributes or properties describe what information the object conveys, it is the data part of the object
# an object can be anything tangible or intangible

# Class

# a class is a blueprint or template of similar objects, an object is an instance of a class. Use UML diagrams to model classes including their attributes and methods

# Encapsulation

# through objects, you can hide the complexity - this is called abstraction or encapsulation - to keep the client of the object from seeing the internal logic of the
# object but letting it still use the object through it's interfaces/methods

# Inheritance

# a class inherits both attributes and methods from another class so you can reuse and extend existing classes
# - a class that other classes inherit from is called a base class or superclass
# - a class that inherits from another class is called subclass or derived class

# Polymorphism

# means a method call can behave differently depending on the type of object that calls it

# Perl OOP rules:

# - a class is a package
# - an object is a reference that knows its class
# - a method is a subroutine

package Product;

sub new {
    
}

1;