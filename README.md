# Driver code

o.pl

# Modules

Animal::Cat.pm  
Animal::Lion.pm  
Automobile::Car.pm  
Automobile::Truck.pm  



# Test code

t/test_animal.pl  



ok 1 - use Animal::Cat;  
ok 2 - use Animal::Lion;  
ok 3 - Animal::Cat->can('new')  
ok 4 - Animal::Cat->can('get_name')  
ok 5 - Animal::Cat->can('get_owner')  
ok 6 - Animal::Cat->can('set_name')  
ok 7 - Animal::Cat->can('get_sound')  
ok 8 - Animal::Lion->can('new')  
ok 9 - Animal::Lion->can('get_name')  
ok 10 - Animal::Lion->can('set_name')  
ok 11 - Animal::Lion->can('get_owner')  
ok 12 - Animal::Lion->can('get_sound')  
1..12  

t/test/automobile.pl  

ok 1 - use Automobile::Car;  
ok 2 - use Automobile::Truck;  
ok 3 - Automobile::Car->can('new')  
ok 4 - Automobile::Car->can('get_model')  
ok 5 - Automobile::Car->can('get_owner')  
ok 6 - Automobile::Car->can('get_color')  
ok 7 - Automobile::Car->can('get_sound')  
ok 8 - Automobile::Truck->can('new')  
ok 9 - Automobile::Truck->can('get_model')  
ok 10 - Automobile::Truck->can('get_owner')  
ok 11 - Automobile::Truck->can('get_color')  
ok 12 - Automobile::Truck->can('get_sound')  
1..12  
