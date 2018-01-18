require 'pry'
require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base
    
  get '/' do
      erb :index
  end
  
  get '/new' do
      erb :create_puppy
  end
  
  post '/display_puppy' do
      @puppy = params
      erb :display_puppy
  end
end
