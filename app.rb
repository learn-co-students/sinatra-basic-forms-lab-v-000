require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do #gets a 200 status code

        erb :index #satifies: has a link with the text "List A puppy" has a link to list a puppy that links to /new
    end

    get '/new' do

        erb :create_puppy
    end

    post '/puppy' do
        name = params[:name]
        breed = params[:breed]
        age = params[:age]
        @pup = Puppy.new(name, breed, age)

        erb :display_puppy
    end
end
