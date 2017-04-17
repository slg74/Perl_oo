package Automobile::Truck;

use Automobile::Car;

use strict;
use warnings;

our @ISA = qw(Automobile::Car);    # Automobile::Truck inherits from Automobile::Car

sub get_sound {
	my ($self) = @_;
	return $self->{sound}; 
}

1;
