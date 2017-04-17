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
ok 4 - Animal::Cat->can('getName')  
ok 5 - Animal::Cat->can('getOwner')  
ok 6 - Animal::Cat->can('setName')  
ok 7 - Animal::Cat->can('getSound')  
ok 8 - Animal::Lion->can('new')  
ok 9 - Animal::Lion->can('getName')  
ok 10 - Animal::Lion->can('setName')  
ok 11 - Animal::Lion->can('getOwner')  
ok 12 - Animal::Lion->can('getSound')  
1..12  

t/test/automobile.pl  

ok 1 - use Automobile::Car;  
ok 2 - use Automobile::Truck;  
ok 3 - Automobile::Car->can('new')  
ok 4 - Automobile::Car->can('getModel')  
ok 5 - Automobile::Car->can('getOwner')  
ok 6 - Automobile::Car->can('getColor')  
ok 7 - Automobile::Car->can('getSound')  
ok 8 - Automobile::Truck->can('new')  
ok 9 - Automobile::Truck->can('getModel')  
ok 10 - Automobile::Truck->can('getOwner')  
ok 11 - Automobile::Truck->can('getColor')  
ok 12 - Automobile::Truck->can('getSound')  
1..12  
