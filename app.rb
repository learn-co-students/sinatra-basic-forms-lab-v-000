require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    puppy = Puppy.new(name: params[:name], breed: params[:breed], months_old: params[:age])
    @age = puppy.age
    @breed = puppy.breed
    @name = puppy.name

    erb :display_puppy

  end

end
