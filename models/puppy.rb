class Puppy
  attr_accessor :name, :breed, :age

  def initialize(name, breed, age) # How would I write this with keyword arguments?
    @name = name
    @breed = breed
    @age = age
  end
end
