class Puppy
  attr_accessor :name, :breed, :age, :months_old
  
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end
  
  def months_old 
    @age 
  end 
  
  def months_old=(age)
    @age = age 
  end
  
end 