class Puppy

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :breed, :age

    def initialize(name, breed, age)
        @name = name
        @breed = breed
        @age = age
        self.save
    end

    def save
        @@all << self
    end

end