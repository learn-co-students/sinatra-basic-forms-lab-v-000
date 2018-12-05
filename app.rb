require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index

  end

  get '/new' do
    erb :new
  end

  post '/puppy' do
    @name = params[:name]
    @age = params[:age]
    @breed = params[:breed]
    erb :puppy
  end
end
