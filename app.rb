require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    puppy = Puppy.new(params[:name], params[:breed], params[:age])
    @pup_name = puppy.name
    @pup_breed = puppy.breed
    @pup_age = puppy.age

    erb :display_puppy
  end
end
