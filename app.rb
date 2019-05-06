require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    months_old = params[:age]
    name = params[:name]
    breed = params[:breed]
    @new_puppy = Puppy.new(name, breed, months_old)

    erb :display_puppy
  end

end
