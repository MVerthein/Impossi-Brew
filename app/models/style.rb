class Style < ActiveRecord::Base
  # Remember to create a migration!
  has_many :beers
  belongs_to :category
end
