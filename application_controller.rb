require 'bundler'
Bundler.require

require './models/subway_model.rb'

class MyApp < Sinatra::Base
  get '/' do
    @subway_lines = ["A", "B", "C", "D", "E", "F", "G", "J/Z", "L", "M", "N", "Q", "R", "Franklin Shuttle", "42nd Street Shuttle", "Rockaway Shuttle", "1", "2", "3", "4", "5", "6", "7"] 
    erb :index
  end
  post '/results' do
    @form_data = params[:lines]
    puts @form_data
    if @form_data == "A"
      @information = Train.new("Inwood-207", "Far Rockaway-Mott, Lefferts Blvd-Ozone, Rockaway Park-116", "24 hours, Lefferts Service 6am", "Lefferts Service 10pm", "Manhattan Express, Late Night Local")
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
      @information = Train.new("Middle Village-Metropolitan", "Forest Hills-71st, Essex Street (Weekends)", "24 hours", "24 hours", "Late Night Service between Middle Village and Myrtle (J Train)")
      elsif @form_data == "N"
      @information = Train.new("Astoria Ditmars", "Coney Island", "24 hrs", "24hrs", "Express Brooklyn, Local Manhattan, via Manhattan Bridge. Late Nights Local via Downtown Manhattan")
      elsif @form_data == "Q"
      @information = Train.new("Astoria Ditmars or 57th-7ave", "Coney Island", "24hrs", "24hrs", "Express Manhattan, Local Brooklyn. Rush Hour service to Astoria, Local during nights.")
      elsif @form_data == "R"
      @information = Train.new("Bay Ridge-95th", "Forest Hills-71st", "24hrs", "Shuttle between 95th and 36th between 12am-6am", "Local service")
    elsif @form_data == "Franklin Shuttle"
      @information = Train.new("Prospect Park", "Franklin Avenue-Fulton", "24hrs", "24hrs", "Shuttle serving Central Brooklyn")
    elsif @form_data == "42nd Street Shuttle"
      @information = Train.new("Times Square", "Grand Central", "6am", "12am", "Use (7) Train at Night")
    elsif @form_data == "Rockaway Shuttle"
      @information = Train.new("Rockaway Park-116", "Broad Channel", "24hrs", "24hrs", "Full-Time service to Rockaway Park-Seaside")
      elsif @form_data == "1"
      @information = Train.new("South Ferry", "Van Cortland-242", "24hrs", "24hrs", "Local service")
      elsif @form_data == "2"
      @information = Train.new("Flatbush-Brooklyn College", "Wakefield-241", "24hrs", "24hrs", "Local in Brooklyn, Express in Manhattan. Late night local")
      elsif @form_data == "3"
      @information = Train.new("New Lots", "Harlem-148th", "24hrs", "24hrs", "Late night 42nd to Harlem-148")
      elsif @form_data == "4"
      @information = Train.new("New Lots", "Woodlawn", "24hrs", "24hrs", "138th-Grand Concourse full-time except am Manhattan bound rush hour, Bronx bound pm rush hour. Express Service in Manhattan, late night local, Bronx local. 167th to Burnside non-stop 9-11am and 6:30-8:30pm.")
      elsif @form_data == "5"
      @information = Train.new("Nereid Avenue or Eastchester-Dyre", "Brooklyn College (Weekdays), Bowling Green (Weekends), 180th (Nights)", "24hrs", "Nereid Service Rush Hour 6:30-9:30am/3:30-8pm", "Lexington Express, Nights only between 180th and Dyre.")
         elsif @form_data == "6"
      @information = Train.new("Pelham Bay or Parkchester", "Brooklyn Bridge", "24hrs", "24hrs", "Local all times, Peak Rush Hour Pelham Bay to 138th")
         elsif @form_data == "7"
        @information = Train.new("Times Square", "Flushing Main", "24hrs", "24hrs", "Express Peak Rush Hour Main to Queensboro.")
      end

   
#     @trains = params[:lines]
    erb :results
  end
end