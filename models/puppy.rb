

class Puppy

  attr_accessor :name, :breed, :months_old
  attr_reader :months_old

  def initialize(params)
    #binding.pry
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:months_old]
  end


end


#{name: "Bernard", breed: "Dachsund", Age: "6"}
