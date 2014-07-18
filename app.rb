require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/scraper.rb'
require './lib/twilio.rb'



get '/' do
  @scraper = Texter.new()
  @texting = TextingData.new()
  erb :index 
end 
