require 'sinatra'
require 'barometer'

get '/' do
  erb :home
end

get '/:city' do
  @city = params[:city]
  barometer = Barometer.new @city
  @weather = barometer.measure
  erb :weather
end