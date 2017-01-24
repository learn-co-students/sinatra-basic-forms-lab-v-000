class Puppy
  attr_accessor :name, :breed, :age

  def initialize(name, breed, age)
    @name = name
    @age = age
    @breed = breed
    self
  end
end
