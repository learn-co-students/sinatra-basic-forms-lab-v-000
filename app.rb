require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    @name = "Puppy Name: #{params[:name]}"
    @age = "Puppy Age: #{params[:age]}"
    @breed = "Puppy Breed: #{params[:breed]}"
    erb :display_puppy
  end 

end
