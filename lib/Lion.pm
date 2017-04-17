package Animal::Lion;

use Animal::Cat;

use strict;
use warnings;

our @ISA = qw(Animal::Cat);

sub get_sound {
	my ($self) = @_;
	return $self->{name}, " says RAWR!"; 
}

1;
