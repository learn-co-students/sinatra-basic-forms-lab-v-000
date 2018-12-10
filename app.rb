require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end 
  
  get '/new' do 
    erb :create_puppy
  end 
  
  post '/puppy' do
    #binding.pry 
    a = Puppy.new(name: params[:name], breed: params[:breed], months_old: params[:age])
    @name = a.name 
    @breed = a.breed 
    @age = a.age + " months"
    erb :display_puppy
  end 
end
