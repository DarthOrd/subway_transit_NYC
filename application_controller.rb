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
    elsif @form_data == "C"
      @information = Train.new("168th-Washington Heights", "Euclid Avenue", "6am", "12am", "Local, No Late Night")
        elsif @form_data == "D"
      @information = Train.new("Norwood-205th", "Coney Island", "24 hours", "24 hours", "Express in Manhattan, Brooklyn, and Bronx during Rush Hour")
           elsif @form_data == "E"
      @information = Train.new("World Trade Center", "Jamaica Center or Jamaica-179 (Some Rush Hour)", "24 hours", "24 hours", "Manhattan Local, Queens Express. Late Night Local Court Square-Jamaica Center")
        elsif @form_data == "F"
        @information = Train.new("Jamaica-179", "Coney Island", "24 hours", "24 hours", "Local in Brooklyn, Manhattan, Express in Queens")
        elsif @form_data == "G"
      @information =  Train.new("Court Square-Long Island City", "Church Avenue", "24 hours", "24 hours", "Crosstown Local")
        elsif @form_data == "J/Z"
        @information = Train.new("Broad Street", "Jamaica Center", "24 hours, Z service 6am-745am (Broad)", "Z Service 445pm-6pm (Jamaica Center)", "Express Myrtle-Marcy and J/Z Skip Stop Service during peak rush hour")
        elsif @form_data ==  "L"
      @information = Train.new("Canarsie-Rockaway Parkway", "8th Avenue-14th Street", "24 hours", "24 hours", "14th Street Crosstown")
        elsif @form_data == "M"
      @infomation = 
      elsif @form_data == "N"
      @infomation = 
      elsif @form_data == "Q"
      @infomation = 
      elsif @form_data == "R"
      @infomation = 
    elsif @form_data == "Franklin Shuttle"
      @infomation = 
    elsif @form_data == "42nd Street Shuttle"
      @infomation = 
    elsif @form_data == "Rockaway Shuttle"
      @infomation = 
      elsif @form_data == "1"
      @infomation = 
      elsif @form_data == "2"
      @infomation = 
      elsif @form_data == "3"
      @infomation = 
      elsif @form_data == "4"
      @infomation = 
      elsif @form_data == "5"
      @infomation =
         elsif @form_data == "6"
      @infomation = 
         elsif @form_data == "7"
      @infomation = 
      
    end
   
    @trains = params[:lines]
    erb :results
  end
end