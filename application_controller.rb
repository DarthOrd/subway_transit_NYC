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
      @infomation = Train.new("Middle Village-Metropolitan", "Forest Hills-71st, Essex Street (Weekends)", "24 hours", "24 hours", "Late Night Service between Middle Village and Myrtle (J Train)")
      elsif @form_data == "N"
      @infomation = Train.new("Astoria Ditmars", "Coney Island", "24 hrs", "24hrs", "Express Brooklyn, Local Manhattan, via Manhattan Bridge. Late Nights Local via Downtown Manhattan")
      elsif @form_data == "Q"
      @infomation = Train.new("Astoria Ditmars or 57th-7ave", "Coney Island", "24hrs", "24hrs", "Express Manhattan, Local Brooklyn. Rush Hour service to Astoria, Local during nights.")
      elsif @form_data == "R"
      @infomation = Train.new("Bay Ridge-95th", "Forest Hills-71st", "24hrs", "Shuttle between 95th and 36th between 12am-6am", "Local service")
    elsif @form_data == "Franklin Shuttle"
      @infomation = Train.new("Prospect Park", "Franklin Avenue-Fulton", "24hrs", "24hrs", "Shuttle serving Central Brooklyn")
    elsif @form_data == "42nd Street Shuttle"
      @infomation = Train.new("Times Square", "Grand Central", "6am", "12am", "Use (7) Train at Night")
    elsif @form_data == "Rockaway Shuttle"
      @infomation = Train.new("Rockaway Park-116", "Broad Channel", "24hrs", "24hrs", "Full-Time service to Rockaway Park-Seaside")
      elsif @form_data == "1"
      @infomation = Train.new("South Ferry", "Van Cortland-242", "24hrs", "24hrs", "Local service")
      elsif @form_data == "2"
      @infomation = Train.new("Flatbush-Brooklyn College", "Wakefield-241", "24hrs", "24hrs", "Local in Brooklyn, Express in Manhattan. Late night local")
      elsif @form_data == "3"
      @infomation = Train.new("New Lots", "Harlem-148th", "24hrs", "24hrs", "Late night")
      elsif @form_data == "4"
      @infomation = Train.new("New Lots", "Woodlawn", "24hrs", "24hrs", "138th-Grand Concourse full-time except am Manhattan bound rush hour, Bronx bound pm rush hour. Express Service in Manhattan, late night local, Bronx local. 167th to Burnside non-stop 9-11am and 6:30-8:30pm.")
      elsif @form_data == "5"
      @infomation =
         elsif @form_data == "6"
      @infomation = 
         elsif @form_data == "7"
      @infomation = 
      
    end
  end
   
    @trains = params[:lines]
    erb :results
  end
end