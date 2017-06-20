require 'bcrypt'

require "geocoder/railtie"
require 'geocoder'
Geocoder::Railtie.insert

class User < ActiveRecord::Base
  attr_reader :client
  # Remember to create a migration!

  geocoded_by :location
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode


  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
  validates :location, length: { is: 5 }



   def find_beer(location, terms)
    params = {
      terms: terms,
      radius_filter: 16093,
    }
    client.search(location, params)
   end

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @raw_password = new_password
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

end
