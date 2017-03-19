require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display' do
    # @puppy_info = params[]
    @puppy_name = params[:name]
    @puppy_age = params[:age]
    @puppy_breed = params[:breed]
    erb :display_puppy

    # "Hello"
  end

end
