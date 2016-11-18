require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @pup_name = Puppy.new(params[:name], params[:breed], params[:age]).name
    @pup_breed = Puppy.new(params[:name], params[:breed], params[:age]).breed
    @pup_age = Puppy.new(params[:name], params[:breed], params[:age]).age
    erb :display_puppy
  end

end
