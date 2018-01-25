class Puppy
  attr_reader :name, :breed, :age
  @@all = []

  def initialize(name= nil, breed= nil, age= nil)
    @name = name
    @breed = breed
    @age = age
    @@all << self
  end

  def name=(string)
    @name= string
  end

  def breed=(string)
    @breed= string
  end

  def age=(string)
    @age= string
  end
end
