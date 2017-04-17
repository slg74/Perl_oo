#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use File::Basename qw(dirname);
use Cwd qw(abs_path);

use lib dirname(dirname abs_path $0) . '/lib';

use Automobile::Car qw(new get_model get_owner get_color get_sound); 

{
	BEGIN { use_ok("Automobile::Car") }
	can_ok("Automobile::Car", "new");
	can_ok("Automobile::Car", "get_model");
	can_ok("Automobile::Car", "get_owner");
	can_ok("Automobile::Car", "get_color");
	can_ok("Automobile::Car", "get_sound");

}

use Automobile::Truck qw(new get_model get_owner get_color get_sound);

{
	BEGIN { use_ok("Automobile::Truck") }
	can_ok("Automobile::Truck", "new");
	can_ok("Automobile::Truck", "get_model");
	can_ok("Automobile::Truck", "get_owner");
	can_ok("Automobile::Truck", "get_color");
	can_ok("Automobile::Truck", "get_sound");

}

done_testing
