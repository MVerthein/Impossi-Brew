class Beer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :style
end
