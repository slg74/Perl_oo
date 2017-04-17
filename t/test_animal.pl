#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use File::Basename qw(dirname);
use Cwd qw(abs_path);

use lib dirname(dirname abs_path $0) . '/lib';

use Animal::Cat qw(new get_name get_owner set_name get_sound); 

{
	BEGIN { use_ok("Animal::Cat") }
	can_ok("Animal::Cat", "new");
	can_ok("Animal::Cat", "get_name");
	can_ok("Animal::Cat", "get_owner");
	can_ok("Animal::Cat", "set_name");
	can_ok("Animal::Cat", "get_sound");

}

use Animal::Lion qw(new get_name get_owner set_name get_sound);

{
	BEGIN { use_ok("Animal::Lion") }
	can_ok("Animal::Lion", "new");
	can_ok("Animal::Lion", "get_name");
	can_ok("Animal::Lion", "set_name");
	can_ok("Animal::Lion", "get_owner");
	can_ok("Animal::Lion", "get_sound");

}

done_testing
