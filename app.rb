require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    @name= params[:name]
    @breed = params[:breed]
    @age = params[:age]
    @new_instance = Puppy.new(@name,@breed,@age)
    @n_name = @new_instance.name
    @n_breed = @new_instance.breed
    @n_age = @new_instance.age

      erb :display_puppy
  end
end
