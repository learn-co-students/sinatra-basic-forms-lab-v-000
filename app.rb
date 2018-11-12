require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    muppy = Puppy.new(params[:name], params[:breed], params[:months_old])

    @name = muppy.name
    @breed = muppy.breed
    @age = muppy.age

    erb :display_puppy
  end

end
