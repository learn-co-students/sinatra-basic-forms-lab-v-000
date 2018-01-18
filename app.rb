require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @puppy_name = params[:name]
    @puppy_breed = params[:breed]
    @puppy_age = params[:age]
    erb :display_puppy
  end
end
