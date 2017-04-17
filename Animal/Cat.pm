package Animal::Cat;

use strict;
use warnings;

sub new {
	my $class = shift;
	my $self = {
		name => shift,
		owner => shift
	};

	bless $self, $class;
	return $self;
}

sub get_name {
	my ($self) = @_;
	return $self->{name};
}

sub get_owner {
	my ($self) = @_;
	return $self->{owner};
}

sub set_name {
	my ($self, $name) = @_; 
	$self->{name} = $name if defined($name);
	return $self->{name};
}

sub get_sound {
	my ($self) = @_;
	return $self->{name}, " says meow"; 
}

1;
