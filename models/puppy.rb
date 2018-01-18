class Puppy 
  attr_accessor :name, :breed, :age

  def initialize(name=nil,breed=nil,age=nil)
    @name = name
    @breed = breed
    @age = age
  end

  def add_attr(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
    self
  end
    
  
end