require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base


  get "/" do
    erb :index
  end

  get "/create_puppy" do
      erb :create_puppy
  end

  post "/new" do
      @puppy = Puppy.new(params[:name], params[:breed], params[:age])
      #(params[:name, :breed, :age])
    erb :display_puppy
  end

end
