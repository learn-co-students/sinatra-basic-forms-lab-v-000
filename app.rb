require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    "Puppy Name:
    #{params[:name]}
    Puppy Breed:
    #{params[:breed]}
    Puppy Age:
    #{params[:age]}"
  end

end
