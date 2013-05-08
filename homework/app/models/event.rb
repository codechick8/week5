class Event < ActiveRecord::Base
  attr_accessible :datetime, :title, :venue, :venue_id

	validates_presence_of :title, :venue

	belongs_to :venue
end
