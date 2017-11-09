require_relative 'config/environment'

class App < Sinatra::Base
# a comment!
# another comment!
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end

end
