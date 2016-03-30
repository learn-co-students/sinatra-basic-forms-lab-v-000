# In app.rb build out a GET request to load a home page. The home page should go to the main route /.

require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/create' do
    @pup = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end

end