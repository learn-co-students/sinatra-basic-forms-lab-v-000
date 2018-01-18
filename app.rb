require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  get '/create_puppy.erb' do
    erb :create_puppy
  end

  post '/' do
    puts params
    @name = params["name"]
    @breed = params["breed"]
    @age = params["age"]
    erb :display_puppy
  end

end
