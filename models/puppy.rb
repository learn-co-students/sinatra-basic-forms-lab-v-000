class Puppy
attr_accessor :name, :age
attr_reader :breed

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  def months_old
    if @age.to_i == 1
      "#{@age} month"
    else
      "#{@age} months"
    end
  end

end
