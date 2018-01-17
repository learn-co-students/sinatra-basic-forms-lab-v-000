ENV['SINATRA_ENV'] ||= "development"
require 'capybara'
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'
