require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    pup = Puppy.new(params[:name], params[:breed], params[:age])
    @puppies = Puppy.all
    erb :display_puppy
  end

  get '/displays' do
    @puppies = Puppy.all
    erb :display_puppy
  end

end
