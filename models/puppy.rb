class Puppy
  
  attr_accessor :name, :breed, :age 
  
  def initialize(name:, breed:, age:)
    @age = age
    @name = name 
    @breed = breed
  end
end