require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    # binding.pry
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    # @name = params[:name]
    # @breed = params[:breed]
    # @age = params[:age]
    erb :display_puppy
  end

end
