require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/post' do
        @pup = Puppy.new.tap do |pup|
            pup.name = params[:name]
            pup.age = params[:age]
            pup.breed = params[:breed]
        end

        erb :display_puppy
    end
end