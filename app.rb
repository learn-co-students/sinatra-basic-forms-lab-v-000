require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    pup = Puppy.new
    @puppy = "Puppy Name:\n#{pup(params[:name])}
              Puppy Breed:\n#{pup(params[:age])}
              Puppy Age:\n#{pup(params[:breed])}"
    erb :display_puppy
  end
end
