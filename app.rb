require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base
  #index page and submit button
  get '/' do
    erb :index
  end

  #entry page with entry values
  get '/new' do
    erb :create_puppy
  end

  #post new puppy with entry values
  post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end
end
