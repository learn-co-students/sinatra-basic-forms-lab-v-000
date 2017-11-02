require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :welcome
  end

  post '/' do
    @phrase = PigLatinizer.new
    @initial_sentence = params[:user_phrase]

    erb :piglatin_results
  end
end
# GET /
#    renders welcome
#  GET /NEW
#    renders the form
#  POST /
#    displays the puppy
