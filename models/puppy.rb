class Puppy

attr_accessor :name, :breed, :age

@@all = []

def initialize(name, breed, age)
  @name = name
  @age = age
  @breed = breed

  @@all << self
end

end
