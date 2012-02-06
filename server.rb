require 'sinatra'
require 'barometer'

get '/:city' do
  @city = params[:city]
  barometer = Barometer.new @city
  @weather = barometer.measure
  erb :weather
end