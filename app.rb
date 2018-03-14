require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    @new_pup = Puppy.new
    @new_pup.name = params[:name]
    @new_pup.breed = params[:breed]
    @new_pup.age = params[:age]
    erb :display_puppy
  end
end
