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

sub getModel {
	my ($self) = @_;
	return $self->{model};
}

sub getOwner {
	my ($self) = @_;
	return $self->{owner};
}

sub getColor {
	my ($self) = @_;
	return $self->{color};
}

sub getSound {
	my ($self) = @_;
	return $self->{sound};
}

1;
