require_relative 'config/environment'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
      end

  get '/new' do
    erb :create_puppy
      end

  post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    # @breed = Puppy.new()
    # @age = Puppy.new(params [:age])
    erb :display_puppy
      end

  # post '/puppy/:name/:breed/:age' do
  #   @name = Puppy.new(params [:name] [:breed][:age])
  #   # @breed = Puppy.new(params [:breed])
  #   # @age = Puppy.new(params [:age])
  #   erb :display_puppy
  #     end

end
