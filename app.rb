require_relative 'config/environment'
require 'capybara/dsl'
class App < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/new" do
    @puppy= Puppy.new

    @puppy.name= params[:name]
    @puppy.breed= params[:breed]
    @puppy.age= params[:age]
    
    erb :display_puppy
  end

end
