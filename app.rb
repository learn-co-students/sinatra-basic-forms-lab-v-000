require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/new' do
		erb :create_puppy
	end

	post '/display_puppy' do
		@puppy = []
		params.each do |key, attribute|
			@puppy << attribute
		end
		erb :display_puppy
	end

end