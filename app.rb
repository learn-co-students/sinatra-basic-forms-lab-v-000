require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end


  post '/new' do
    name = params[:name]
    age = params[:age]
    breed = params[:breed]

    puppy = Puppy.new(name,breed,age)
    @name = puppy.name
    @age = puppy.age
    @breed = puppy.breed

    erb :display_puppy
  end

end
