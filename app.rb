require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    name = params[:user_input][:name]
    breed = params[:user_input][:breed]
    age = params[:user_input][:age]
    @puppy = Puppy.new(name, breed, age)
    erb :display_puppy
  end
end


# In app.rb build out a GET request to load a homepage. The homepage should go to the main route /
