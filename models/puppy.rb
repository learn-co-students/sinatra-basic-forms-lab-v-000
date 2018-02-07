class Puppy

  attr_accessor :name, :breed, :age

  def initialize(name = nil, breed = nil, age = nil)
    @name, @breed, @age = name, breed, age    
  end

end
