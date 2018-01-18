require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end 

  get '/new' do
    erb :create_puppy
  end
  get '/create_puppy.erb' do
    erb :create_puppy
  end

  post "/display_puppy"do
  #  @puppy = Puppy.new(params[:name])
    erb :display_puppy
  end
end