

class Puppy
  attr_accessor :name, :breed, :age
  attr_reader :name, :breed, :age

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end
end