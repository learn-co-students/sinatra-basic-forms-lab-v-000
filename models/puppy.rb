class Puppy
	attr_accessor :name, :breed, :age
	@@all = []

	def initialize(name, breed, age)
		@name = name
		@breed = breed
		@age = age
		@@all << self
	end

	def self.create_from_params(params)
		self.new(params[:name], params[:breed], params[:age])
		self
	end

	def self.list_all_as_string
		@@all.map do |puppy|
			"Name:\n#{puppy.name}\nBreed:\n#{puppy.breed}\nAge:\n#{puppy.age}\n"
		end
	end

	def self.all
		@@all
	end
	
end
