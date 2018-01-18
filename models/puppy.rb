class Puppy
  attr_accessor :name, :breed, :age
  # these instance attributes that allow the attributes to set and read
  # this allows our instance of a puppy the ability

  #when initializing an instance of a Puppy, there are 3 arguments required that are set as instance attributes
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

end
