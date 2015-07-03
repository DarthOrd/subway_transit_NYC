require 'bundler'
Bundler.require

require './models/subway_model.rb'

class MyApp < Sinatra::Base
  get '/' do
    @subway_lines = ["A", "B", "C", "D", "E", "F", "G", "J/Z", "L", "M", "N", "Q", "R", "Franklin Shuttle", "42nd Street Shuttle", "Rockaway Shuttle", "1", "2", "3", "4", "5", "6", "7"] 
    erb :index
  end
  post '/results' do
    @form_data = params[:train]
    puts @form_data
    if @form_data == "A"
      @information = Train.new("Inwood", "Far Rockaway-Mott, Lefferts Blvd-Ozone, Rockaway Park-116", "24 hours, Lefferts Service 6am", "Lefferts Service 10pm", "Manhattan Express, Late Night Local")
    elsif @form_data == "B"
      @information = Train.new("145th Street", "Brighton Beach", "6am", "11pm", "Rush Hour extention to Bedford Park Blvd. Weekday Service Only, No Late Night. Express Brooklyn, Manhattan, Local in Bronx.")
    elsif @form_data == 
        elsif @form_data ==
           elsif @form_data ==
        elsif @form_data ==
        elsif @form_data ==
        elsif @form_data ==
        elsif @form_data ==
        elsif @form_data ==
        
    end
   
    @trains = params[:lines]
    erb :results
  end
end