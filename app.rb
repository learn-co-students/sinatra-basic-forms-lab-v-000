require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/puppy' do
    @puppy_name = params[:name]
    @breed  = params[:breed]
    @age = params[:age]
    @new_puppy = Puppy.new(@puppy_name, @breed, @age)
    erb :display_puppy
  end

  get '/new' do
    erb :create_puppy
  end


end
