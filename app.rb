require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppies' do
    pups = Puppy.new(params[:name], params[:breed], params[:age])
    @puppies = pups

    erb :display_puppy
  end

end
