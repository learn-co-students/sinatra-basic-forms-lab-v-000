require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy_attributes = Puppy.new(params["name"], params["breed"], params["age"])
    erb :display_puppy
    #@puppy_attributes = Puppy.new(params["name"], params["breed"], params["age"])
  end
end
