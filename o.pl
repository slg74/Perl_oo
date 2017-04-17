#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use feature 'switch';
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

