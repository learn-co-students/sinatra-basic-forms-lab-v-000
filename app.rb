require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/NEW' do
    erb :create_puppy
  end

  post '/NEW' do
    # @puppy_data = params[:puppy_data]
    erb :display_puppy
  end

end
