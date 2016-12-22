require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  get '/new' do
    erb :create_puppy
  end
  post '/displa' do
    inp=params
    r=Puppy.new(inp[:name],inp[:breed],inp[:age])
    @attr=[params[:name],params[:breed],params[:age]]
    erb :display_puppy
  end
    

end
