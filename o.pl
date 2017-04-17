#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use feature 'switch';

sub animal_actions {
	use Animal::Cat;

	my $whiskers = new Animal::Cat("whiskers", "Scott"); 
	say $whiskers->get_name();

	$whiskers->set_name("Whiskers");

	say $whiskers->get_name();
	say $whiskers->get_sound(); 

	use Animal::Lion;

	my $king = new Animal::Lion("King", "No Owner"); 

	say $king->get_sound(); 
	say $king->get_owner(); 

	say $whiskers->get_owner(); 
}


sub automobile_actions {
	{
		use Automobile::Car;

		my $gt = new Automobile::Car("GT40", "Scott", "Blue", "VRooM");

		say $gt->get_model();
		say $gt->get_color(); 
		say $gt->get_sound(); 

		my $model = $gt->get_model(); 
		my $color = $gt->get_color();
		my $sound = $gt->get_sound(); 
		my $owner = $gt->get_owner(); 

		say "$model $color $sound $owner"; 

		use Automobile::Truck;
	}

	{
		my $t = new Automobile::Truck("RAM", "Scott", "Black", "RAGARAGARAGA");

		say $t->get_model();
		say $t->get_color(); 
		say $t->get_sound(); 

		my $model = $t->get_model(); 
		my $color = $t->get_color();
		my $sound = $t->get_sound(); 
		my $owner = $t->get_owner(); 

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
