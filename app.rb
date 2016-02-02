require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :index
  end

  get '/new' do 
    erb :create_puppy
  end

  post '/display_puppy' do 
    puppy = Puppy.new(params[:name],params[:breed],params[:age])
    "Puppy Name:\n#{puppy.name}\nPuppy Breed:\n#{puppy.breed}\nPuppy Age:\n#{puppy.age}"
  end
end