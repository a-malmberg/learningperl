#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from perltutorial.org/perl-oop

package Product;

sub new {               # constructor, perl automatically passes the class name "Product" as the first argument into @_
                        # when you create an object, you actually create a reference that knows what class it belongs to, the built-in function "bless"
                        # is used to bless the reference to the class and return an instance of the class
    my ($class, $args) = @_;
    my $self = bless { serial => $args->{serial},
                      name => $args->{name},
                      price => $args->{price}
                    }, $class;
}

# get name of the product

sub get_name{
    my $self = shift;
    return $self->{name};
}

# set new name for the product

sub set_name{
    my ($self, $new_name) = @_;
    $self->{name} = $new_name;
}

sub get_price{
    my $self = shift;
    return $self->{price};
}

sub set_price{
    my ($self, $new_price) = @_;
    $self->{price} = $new_price;
}

sub get_serial{
    my $self = shift;
    return $self->{serial};
}

sub set_serial{
    my ($self, $new_serial) = @_;
    $self->{serial} = $new_serial;
}

# return formatted string of the product

sub to_string{
    my $self = shift;
    return "Serial: $self->{serial}\nName: $self->{name}\nPrice: $self->{price}USD\n";
}

1;