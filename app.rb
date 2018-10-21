require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @dog_name, @dog_breed, @dog_age = params[:name], params[:breed], params[:age]
    erb :display_puppy
  end

end
