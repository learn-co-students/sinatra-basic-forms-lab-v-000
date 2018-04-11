require_relative 'config/environment'

class App < Sinatra::Base

  get '/'do
    erb :index  #the home page
  end

  get '/new' do
    erb :create_puppy
  end


  post '/'do
    @name = params["n"]
    @breed = params["b"]
    @age = params["a"]
    erb :display_puppy
  end


end
