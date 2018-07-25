require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/create_puppy' do 
		erb :create_puppy
	end

	post '/display_puppy' do
		"Puppy Name: #{params[:name]}, Breed: #{params[:breed]}, Age: #{params[:age]}"
	end

end