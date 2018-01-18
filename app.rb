require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/puppy' do
    pup = Puppy.new(params[:name], params[:breed], params[:age])
    @name = pup.name
    @breed = pup.breed
    @age = pup.age
    erb :display_puppy
  end

  get '/new' do
    erb :create_puppy
  end

end