require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/" do
    @new_puppy = Puppy.new(params[:name], params[:breed], params[:age])
    @name_label = "Puppy Name:\n"
    @breed_label = "Puppy Breed:\n"
    @age_label = "Puppy Age:\n"
    erb :display_puppy
  end

end
