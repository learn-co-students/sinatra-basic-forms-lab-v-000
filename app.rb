require_relative 'config/environment'

class App < Sinatra::Base

  get '/'do
    erb :index  #the home page
  end

  post '/new' do

    erb :create_puppy
  end

  post '/'do
    @name = params["n"]
    @breed = params["b"]
    @age = params["a"]

    erb :third_view
  end


end
