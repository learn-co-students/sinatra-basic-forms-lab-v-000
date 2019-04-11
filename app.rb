require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy_new = Puppy.new(params[:name], params[:breed], params[:age])
    # @name = @puppy_new.name
    # @breed = @puppy_new.breed
    # @age = @puppy_new.months_old
    erb :display_puppy
  end
end
