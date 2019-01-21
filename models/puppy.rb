class Puppy
	attr_accessor :name, :breed, :age

	@@all = []

	def initialize(name, breed, age)
		@name = name
		@breed = breed
		@age = age
	end

	def self.create(name, breed, age)
		new_puppy = Puppy.new(name, breed, age)

		new_puppy.save
	end	

	def self.save
		@@all << self
	end

	def self.all
		@@all
	end
end