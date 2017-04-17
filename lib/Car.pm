package Automobile::Car;

use strict;
use warnings;

sub new {
	my $class = shift;
	my $self = {
		model => shift,
		owner => shift,
		color => shift,
		sound => shift
	};

	bless $self, $class;
	return $self;
}

sub get_model {
	my ($self) = @_;
	return $self->{model};
}

sub get_owner {
	my ($self) = @_;
	return $self->{owner};
}

sub get_color {
	my ($self) = @_;
	return $self->{color};
}

sub get_sound {
	my ($self) = @_;
	return $self->{sound};
}

1;
