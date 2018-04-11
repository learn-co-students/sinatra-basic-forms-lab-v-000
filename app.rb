require_relative 'config/environment'

class App < Sinatra::Base

  get '/'do
    erb :index  #the home page
  end

  get '/new' do
    erb :create_puppy
  end


  post '/'do
  @puppy = Puppy.new(params[:name],params[:breed],params[:age])
    erb :display_puppy
  end

 #  Always look for what the Params with Binding.pry
 # params always hold the information from the Form as a Hash[]
 #  when you say Puppy.new...(you app know that is a class method.)


end
