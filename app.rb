require_relative 'config/environment'
require_relative "models/puppy.rb"

class App < Sinatra::Base

  get '/' do
#    erb :index
  end

  post '/create_puppy' do
#    @phrase = params[:user_phrase]
    erb :display_puppy
  end

end
