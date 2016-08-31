require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
  erb :index
end

get '/new' do
  erb :create_puppy
end

post '/new' do
  @new_name = params[:name]
  @new_breed = params[:breed]
  @new_age = params[:age]
  erb :display_puppy
end

end
