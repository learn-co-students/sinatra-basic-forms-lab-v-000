class Puppy
  attr_reader :breed
  attr_accessor :name, :age

  def initialize(name:, breed:, months_old:)
    self.name = name
    @breed = breed
    self.age = months_old
  end
end
