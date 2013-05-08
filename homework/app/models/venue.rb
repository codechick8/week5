class Venue < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :events
  validates_presence_of :address, :name

end
