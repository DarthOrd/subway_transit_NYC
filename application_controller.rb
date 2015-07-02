require 'bundler'
Bundler.require

require './models/subway_model.rb'

class MyApp < Sinatra::Base
  get '/' do
    @subway_lines = ["A ", "B ", "C", "D", "E", "F", "G", "J/Z", "L", "M", "N", "Q", "R", "Franklin Shuttle", "42nd Street Shuttle", "Rockaway Shuttle", "1", "2", "3", "4", "5", "6", "7"] 
    erb :index
  end
  post '/results' do
   
    @trains = params[:lines]
    erb :results
  end
end