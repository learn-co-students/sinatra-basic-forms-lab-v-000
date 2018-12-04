class Puppy
  attr_accessor :name, :age
  attr_reader :breed
  def initialize(args)
    @name = args[:name]
    @breed = args[:breed]
    @age = args[:age]
  end
end