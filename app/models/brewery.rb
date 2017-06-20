require 'geocoder'
require "geocoder/railtie"
Geocoder::Railtie.insert

class Brewery < ActiveRecord::Base
  # Remember to create a migration!
  Brewery.connection
  geocoded_by :address
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode


  # if Brewery.geocoded?
  #   Brewery.nearbys(30)
  # end

end
