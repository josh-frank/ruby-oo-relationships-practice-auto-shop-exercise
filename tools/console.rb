require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

click = Mechanic.new( "Tom Magliozzi", "SUV" )
clack = Mechanic.new( "Ray Magliozzi", "tractor-trailer" )
dom = Mechanic.new( "Dom Toretto", "sport car" )
brian = Mechanic.new( "Brian O'Conner", "luxury car" )

leno = CarOwner.new( "Jay Leno" )
seinfeld = CarOwner.new( "Jerry Seinfeld" )
mayweather = CarOwner.new( "Floyd Mayweather Jr." )

g_class = Car.new( "Mercedes", "G-class", "SUV", leno, click )
forester = Car.new( "Subaru", "Forester", "SUV", seinfeld, click )
vnl = Car.new( "Volvo", "VNL", "tractor-trailer", mayweather, clack )
harvester = Car.new( "International", "Harvester", "tractor-trailer", leno, clack )
wrx = Car.new( "Subaru", "WRX", "sport car", seinfeld, dom )
sls = Car.new( "Mercedes", "SLS AMG", "sport car", mayweather, dom )
s90 = Car.new( "Volvo", "S90", "luxury car", leno, brian )
s_class = Car.new( "Mercedes", "S-class", "luxury car", seinfeld, brian )

binding.pry