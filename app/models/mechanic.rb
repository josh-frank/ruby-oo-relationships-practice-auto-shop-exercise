class Mechanic

  @@all = []

  attr_reader :name, :specialty

  def initialize( this_name, this_specialty )
    @name = this_name
    @specialty = this_specialty
    @@all << self
  end

  # - `Mechanic.all` Get a list of all mechanics
  def self.all
    @@all
  end
  
  # - `Mechanic#cars` Get a list of all cars that a mechanic services
  def cars
    Car.all.select{ | car | car.mechanic == self }
  end

  # - `Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic
  def car_owners
    cars.map{ | car | car.owner }
  end

  # - `Mechanic#car_owners_names` Get a list of the names of all car owners who go to a specific mechanic
  def car_owners_names
    cars.map{ | car | car.owner.name }
  end

end
