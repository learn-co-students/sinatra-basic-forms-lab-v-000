require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
        erb :index
      end

  get '/new' do
        # erb :user_input
      end

  post '/puppy' do
        # erb :user_input
      end

end
