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

animal_actions(); 

sub automobile_actions {
	use Automobile::Car;

	my $gt = new Automobile::Car("GT40", "Scott", "Blue", "VRooM");

	say $gt->getModel();
	say $gt->getColor(); 
	say $gt->getSound(); 

	my $cm = $gt->getModel(); 
	my $cc = $gt->getColor();
	my $cs = $gt->getSound(); 
	my $co = $gt->getOwner(); 

	say "$cm $cc $cs $co"; 

	use Automobile::Truck;

	my $t = new Automobile::Truck("RAM", "Scott", "Black", "RAGARAGARAGA");

	say $t->getModel();
	say $t->getColor(); 
	say $t->getSound(); 

	my $m = $t->getModel(); 
	my $c = $t->getColor();
	my $s = $t->getSound(); 
	my $o = $t->getOwner(); 

	say "$m $c $s $o"; 

}

automobile_actions(); 
