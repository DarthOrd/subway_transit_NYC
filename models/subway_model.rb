class Train
  attr_accessor  :origin, :destination, :start_time, :end_time, :service_detail
  def initialize(origin, destination, start_time, end_time, service_detail)
    @origin = origin
    @destination = destination
    @start_time = start_time
    @end_time = end_time
    @service_detail = service_detail
end
end
atrain = Train.new("Inwood", "Far Rockaway-Mott, Lefferts Blvd-Ozone, Rockaway Park-116", "24 hours, Lefferts Service 6am", "Lefferts Service 10pm", "Manhattan Express, Late Night Local")
btrain = Train.new("145th Street", "Brighton Beach", "6am", "11pm", "Rush Hour extention to Bedford Park Blvd. Weekday Service Only, No Late Night. Express Brooklyn, Manhattan, Local in Bronx.")
ctrain = Train.new("168th-Washington Heights", "Euclid Avenue", "6am", "12am", "Local, No Late Night")
dtrain = Train.new("Norwood-205th", "Coney Island", "24 hours", "24 hours", "Express in Manhattan, Brooklyn, and Bronx during Rush Hour")
etrain = Train.new("World Trade Center", "Jamaica Center or Jamaica-179 (Some Rush Hour)", "24 hours", "24 hours", "Manhattan Local, Queens Express. Late Night Local Court Square-Jamaica Center")
ftrain = Train.new("Jamaica-179", "Coney Island", "24 hours", "24 hours", "Local in Brooklyn, Manhattan, Express in Queens")
gtrain = Train.new("Court Square-Long Island City", "Church Avenue", "24 hours", "24 hours", "Crosstown Local")
jztrain = Train.new("Broad Street", "Jamaica Center", "24 hours, Z service 6am-745am (Broad)", "Z Service 445pm-6pm (Jamaica Center)", "Express Myrtle-Marcy and J/Z Skip Stop Service during peak rush hour")
ltrain = Train.new("Canarsie-Rockaway Parkway", "8th Avenue-14th Street", "24 hours", "24 hours", "14th Street Crosstown")
mtrain = Train.new("Middle Village-Metropolitan", "Forest Hills-71st, Essex Street (Weekends)", "24 hours", "24 hours", "Late Night Service between Middle Village and Myrtle (J Train)")
ntrain = Train.new("Astoria Ditmars", "Coney Island", "24 hrs", "24hrs", "Express Brooklyn, Local Manhattan, via Manhattan Bridge. Late Nights Local via Downtown Manhattan" )
qtrain= Train.new("Astoria Ditmars or 57th-7ave", "Coney Island", "24hrs", "24hrs", "Express Manhattan, Local Brooklyn. Rush Hour service to Astoria, Local during nights.")
rtrain = Train.new("Bay Ridge-95th", "Forest Hills-71st", "24hrs", "Shuttle between 95th and 36th between 12am-6am", "Local service")
franklinshuttle = Train.new("Prospect Park", "Franklin Avenue-Fulton", "24hrs", "24hrs", "Shuttle serving Central Brooklyn")
shuttle_42nd = Train.new("Times Square", "Grand Central", "6am", "12am", "Use (7) Train at Night")
rockshuttle = Train.new("Rockaway Park-116", "Broad Channel", "24hrs", "24hrs", "Full-Time service to Rockaway Park-Seaside")
one_train = Train.new("South Ferry", "Van Cortland-242", "24hrs", "24hrs", "Local service")
two_train = Train.new("Flatbush-Brooklyn College", "Wakefield-241", "24hrs", "24hrs", "Local in Brooklyn, Express in Manhattan. Late night local")
three_train = Train.new("New Lots", "Harlem-148th", "24hrs", "24hrs", "Late night ")
four_train = Train.new("New Lots", "Woodlawn", "24hrs", "24hrs", "138th-Grand Concourse full-time except am Manhattan bound rush hour, Bronx bound pm rush hour. Express Service in Manhattan, late night local, Bronx local. 167th to Burnside non-stop 9-11am and 6:30-8:30pm.")
five_train = Train.new("")