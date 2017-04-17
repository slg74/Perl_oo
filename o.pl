#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use feature 'switch';

sub animal_actions {
	use Animal::Cat;

	my $whiskers = new Animal::Cat("whiskers", "Scott"); 
	say $whiskers->getName();

	$whiskers->setName("Whiskers");

	say $whiskers->getName();
	say $whiskers->getSound(); 

	use Animal::Lion;

	my $king = new Animal::Lion("King", "No Owner"); 

	say $king->getSound(); 
	say $king->getOwner(); 

	say $whiskers->getOwner(); 
}


sub automobile_actions {
	{
		use Automobile::Car;

		my $gt = new Automobile::Car("GT40", "Scott", "Blue", "VRooM");

		say $gt->getModel();
		say $gt->getColor(); 
		say $gt->getSound(); 

		my $model = $gt->getModel(); 
		my $color = $gt->getColor();
		my $sound = $gt->getSound(); 
		my $owner = $gt->getOwner(); 

		say "$model $color $sound $owner"; 

		use Automobile::Truck;
	}

	{
		my $t = new Automobile::Truck("RAM", "Scott", "Black", "RAGARAGARAGA");

		say $t->getModel();
		say $t->getColor(); 
		say $t->getSound(); 

		my $model = $t->getModel(); 
		my $color = $t->getColor();
		my $sound = $t->getSound(); 
		my $owner = $t->getOwner(); 

		say "$model $color $sound $owner"; 
	}
}


sub main {
	my $count = 0; 
	my $running = 1; 
	while ($running) {

		animal_actions();
		automobile_actions();

		if ($count == 10) {
			$running = 0;
			return 0;
		}

		print "\n"x2; 
		sleep 1; 

		$count++; 
	}
}

main(); 
