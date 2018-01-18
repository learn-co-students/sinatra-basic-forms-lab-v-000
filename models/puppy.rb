class Puppy

  attr_accessor :name, :age, :breed

  @all = []
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

end
