require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:age] # name="age" in the form, so params will refer to it as age, not months_old. "name=" section in form input always correspond to params key.

    erb :display_puppy
  end
end
