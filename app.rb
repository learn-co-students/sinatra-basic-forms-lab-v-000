require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @puppy_name = params[:name]
    @puppy_age = params[:age]
    @puppy_breed = params[:breed]

    erb :display_puppy
  end

end
