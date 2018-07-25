require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb: index.erb
	end

	get '/create_puppy' do 
		erb: create_puppy.erb
	end

	post '/display_puppy' do
		params.to_s
	end

end