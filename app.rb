require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do 
    erb :index
  end
  
  get "/new" do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    erb :index
  end
end
