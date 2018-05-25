require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/create_puppy' do
    # Note: puppy object not really needed at this time...
    puppy = Puppy.new(params[:name],params[:breed],params[:age])
    @name = puppy.name
    @breed = puppy.breed
    @age = puppy.age
    erb :display_puppy
  end
end
