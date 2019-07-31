require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    pups = Puppy.new(params[:name], params[:breed], params[:age])
    @name = pups.name
    @breed = pups.breed
    @age = pups.months_old
    #binding.pry
    erb :display_puppy
  end

end
