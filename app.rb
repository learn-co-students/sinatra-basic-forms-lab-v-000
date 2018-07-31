require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base

 get "/" do
  erb :index
 end

 post "/" do
   @params = params
   erb :display_puppy
 end

 get "/new" do
   erb :new
 end
end
