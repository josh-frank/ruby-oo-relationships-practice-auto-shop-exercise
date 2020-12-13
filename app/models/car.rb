class Car

  @@all = []

  attr_reader :make, :model, :classification
  attr_reader :owner, :mechanic

  def initialize( this_make, this_model, this_classification, this_owner, this_mechanic )
    @make = this_make
    @model = this_model
    @classification = this_classification
    @owner = this_owner
    @mechanic = this_mechanic
    @@all << self
  end

  # - `Car.all` Get a list of all cars
  def self.all
    @@all
  end

  # - `Car.classifications` Get a list of all car classifications
  def self.classifications
    self.all.map{ | cars | car.classifications }
  end

  # - `Car.find_mechanics(classification)` Get a list of mechanics that have an expertise that matches the passed in car classification
  def self.find_mechanics( classification )
  end

end
