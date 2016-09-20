require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do 
    status 200
    erb :index
  end

  get "/new" do
    status 200
    erb :create_puppy
  end

  post "/display_puppy" do
    status 200
    @puppy = Puppy.new(params[:name],params[:breed],params[:age])
    erb :display_puppy
  end
end