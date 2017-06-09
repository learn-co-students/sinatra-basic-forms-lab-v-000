require_relative 'config/environment'

class App < Sinatra::Base

	get "/" do
		erb :index
	end

	get "/new" do
		erb :create_puppy
	end

	post "/" do
		@name = "Puppy Name: #{params[:name]}"
	  @breed = "Puppy Breed: #{params[:breed]}"
	  @age= "Puppy Age: #{params[:age]}"
		erb :display_puppy
	end

end
