require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do #not caps is important
    #@name = params[:name]
    erb :create_puppy
  end

  post '/' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    erb :display_puppy
  end

end
