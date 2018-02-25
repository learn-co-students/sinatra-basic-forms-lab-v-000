# You are basically building an application that allows a user to submit a form to create a puppy, and then display the puppy that the user created

class Puppy
  attr_accessor :name, :breed, :age

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

end
