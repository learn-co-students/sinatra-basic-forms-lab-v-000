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

        @name = params[:name] #alt: params['name']
        @age = params[:age] #alt: params['age']
        @breed = params[:breed] #alt:params['breed']

        erb :display_puppy
    end
end