require_relative 'config/environment'
require_relative 'models/lawyer'
require 'nokogiri'
require 'open-uri'
class App < Sinatra::Base

  get '/' do

    erb :index
  end

  get '/results' do
    erb :results
  end

  post '/results' do
    @new_scrape = Scrape.create_hash("https://www.avvo.com/search/lawyer_search?utf8=%E2%9C%93&q=#{params['legal']}&loc=#{params['location']}&button=")
    erb :results
     
  end

end
