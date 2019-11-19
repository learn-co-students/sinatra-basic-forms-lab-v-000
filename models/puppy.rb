class Puppy
attr_accessor :name, :breed, :months_old

  def initialize(params)
  
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:age]
  end


end