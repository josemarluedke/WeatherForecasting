require 'rubygems'
require 'sinatra'
require 'barometer'

configure do
  set :views, "./views"
end

get '/:city' do
  @city = params[:city]
  barometer = Barometer.new @city
  @weather = barometer.measure
  erb :weather
end