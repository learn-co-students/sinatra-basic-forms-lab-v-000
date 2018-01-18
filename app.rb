require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do 
		erb :index
	end

	get '/display_puppy' do 
		@puppies = Puppy.all
		erb :display_puppy
	end

	get '/new' do 
		erb :create_puppy
	end

	post '/submit_puppy' do 
		Puppy.create_from_params(params)
		@puppies = Puppy.all
		erb :display_puppy
	end

end