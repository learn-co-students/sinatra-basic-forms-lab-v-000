require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    #@puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :create_puppy
  end

  post '/' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end

end