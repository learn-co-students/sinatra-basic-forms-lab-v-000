class Puppy
    attr_accessor :name, :breed, :age

    @all = []

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        self.class.all << self
    end

    def self.all
        @all
    end
end
