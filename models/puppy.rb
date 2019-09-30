class Puppy
  attr_accessor :name, :breed, :age, :months_old

  def initialize(name,breed,age,months_old)
    @name = name
    @breed = breed
    @months_old = months_old
    @age = age
end

 def puppy_age(change)
   change.each do |b| b.@months_old.convert_to(@age)
end
