#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use File::Basename qw(dirname);
use Cwd qw(abs_path);

use lib dirname(dirname abs_path $0) . '/lib';

use Animal::Cat qw(new getName getOwner setName getSound); 

{
	BEGIN { use_ok("Animal::Cat") }
	can_ok("Animal::Cat", "new");
	can_ok("Animal::Cat", "getName");
	can_ok("Animal::Cat", "getOwner");
	can_ok("Animal::Cat", "setName");
	can_ok("Animal::Cat", "getSound");

}

use Animal::Lion qw(new getName getOwner setName getSound);

{
	BEGIN { use_ok("Animal::Lion") }
	can_ok("Animal::Lion", "new");
	can_ok("Animal::Lion", "getName");
	can_ok("Animal::Lion", "setName");
	can_ok("Animal::Lion", "getOwner");
	can_ok("Animal::Lion", "getSound");

}

done_testing
