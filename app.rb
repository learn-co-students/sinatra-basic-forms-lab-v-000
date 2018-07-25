require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/new' do 
		erb :create_puppy
	end

	post '/display_puppy' do
		"Puppy Name: #{params[:name]}, Puppy Breed: #{params[:breed]}, Puppy Age: #{params[:age]}"
	end

end