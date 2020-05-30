require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    "the /new route"
    erb :create_puppy
  end

  post '/puppy' do
    #raise params.inspect
    @puppy = Puppy.new(name: params["name"] ,breed: params[:breed] ,age: params["age"])
    erb :display_puppy
  end

end
