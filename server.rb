require 'sinatra'

get '/:city' do
  @city = params[:city]
  erb :weather
end