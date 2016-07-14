require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @puppy_name = params[:name].capitalize
    @puppy_breed = params[:breed].capitalize
    @puppy_age = params[:age]
    puppy = Puppy.new(@puppy_name, @puppy_breed, @puppy_age)

    erb :display_puppy
  end

end