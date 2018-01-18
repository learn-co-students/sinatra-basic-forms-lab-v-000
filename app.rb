require_relative 'config/environment'

class App < Sinatra::Base
   get '/' do
    erb :index
   end

   get '/new' do
     erb :create_puppy
   end
   #
  #  post '/new' do
  #      "Hello World"
  #    end

   post '/' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb  :display_puppy
  end
end

#this is what I don't understand: how the name of the view erb is connected to the name of the /page.
