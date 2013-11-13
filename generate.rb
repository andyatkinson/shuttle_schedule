#!/usr/bin/env ruby -w

require 'rubygems'
require 'fastercsv'
require 'mustache'

# These are specific locations or points of interest (POI) to call out to the user. They are office locations in this case, where riders can board the shuttle. They could be transit stops.
LOCATION_POSITIONS = [
  {:name => "1445", :lat => "38.899508", :lon => "-77.033064"},
  {:name => "Chinatown", :lat => "38.902673", :lon => "-77.021778"},
  {:name => "918", :lat => "38.897298", :lon => "-77.024340"}
  ]
  
def departure_geoloc(name)
  val = {:lat => "", :lon => ""}
  LOCATION_POSITIONS.each {|pos|
    if pos[:name] == name 
      val.merge!({:lat => pos[:lat]})
      val.merge!({:lon => pos[:lon]})
    end
    }
  val
end

DATA_FILE = "shuttle_schedule_data.csv"
csv_data = File.read(DATA_FILE)
rows = FasterCSV.parse(csv_data, :headers => true).inject([]) do |rows, row|
  rows << {
    :time => Time.parse(row[0]).strftime("%I:%M%p"),
    :departing => row[1],
    :arriving => row[2],
    :hour => Time.parse(row[0]).hour,
    :lat => departure_geoloc(row[1])[:lat],
    :lon => departure_geoloc(row[1])[:lon]
  }
end

template = File.read("departure_table_template.html")
html = Mustache.render(template, {:rows => rows})

File.open("shuttle_schedule.rb", "a"){|f| f.write(html)}
