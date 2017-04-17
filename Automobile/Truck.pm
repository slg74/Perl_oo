package Automobile::Truck;

use Automobile::Car;

use strict;
use warnings;

our @ISA = qw(Automobile::Car);

sub getSound {
	my ($self) = @_;
	return $self->{sound}; 
}

1;
