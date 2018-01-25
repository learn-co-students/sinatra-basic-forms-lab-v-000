class Puppy
  attr_reader :name, :breed, :age
  @@all = []

  def initialize(name= nil, breed= nil, age= 0)
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

  def age=(integer)
    @age= integer
  end
end
