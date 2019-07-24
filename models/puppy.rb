class Puppy

    attr_reader :breed, :age

    attr_accessor :name

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