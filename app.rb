require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do 
    erb :index
  end

  post '/' do
    binding.pry
    
    erb :display_puppy
  end

  get '/new' do

    erb :create_puppy
  end



end  #  End of Class