require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do 
    erb :index
  end
  
  get "/new" do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    erb :create_puppy
  end
  
   post "/" do 
    @new_puppy = Puppy.new(params[:name], params[:breed], params[:age])
    binding.pry
    erb :display_puppy
  end
end
