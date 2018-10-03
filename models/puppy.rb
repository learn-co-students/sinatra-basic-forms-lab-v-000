class Puppy
    attr_accessor :name, :breed, :age

    @@all = []

    def initialize(name = "Unknown", breed = "Unknown", age = "Unknown")
        @name = name
        @breed = breed
        @age = age
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end