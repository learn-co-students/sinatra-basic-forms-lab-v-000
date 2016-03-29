require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    @title = "Poppy Adoption Site"
    erb :index
  end

  get '/new' do
    @title = "Create new puppy"
    erb :create_puppy
  end

  post '/new' do
    @title = "Puppy details"
    @puppy = Puppy.new.tap do |p|
      p.name = params[:name]
      p.breed = params[:breed]
      p.age = params[:age].to_i
    end

    erb :display_puppy
  end
end