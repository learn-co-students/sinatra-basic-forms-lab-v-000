require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end


  post '/' do
    text_from_user = params
    @analyzed_text = Puppy.new(text_from_user[:name], text_from_user[:breed], text_from_user[:age])
    erb :display_puppy
  end

end
