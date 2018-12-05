class Puppy
  @@all = Array.new

  attr_accessor :name, :breed, :age

  def initialize(puppy)
    @name = puppy[:name]
    @breed = puppy[:breed]
    if puppy[:months_old] == nil
      @age = puppy[:age]
    else
      @age = puppy[:months_old]
    end
    @@all << self
  end

  def self.all
    @@all
  end

end
