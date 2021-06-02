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
    # binding.pry
    @puppy = Puppy.new(name, breed, age)
    @puppy.name(params[:name])
    @puppy.breed(params[:breed])
    @puppy.age(params[:age])
    
    erb :display_puppy
  end
end


# binding.pry
#     @puppy = Puppy.new(name)
#     @puppy.name(params[:name])
    
#     erb :display_puppy