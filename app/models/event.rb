class Event < ActiveRecord::Base
	belongs_to :customer
	
	has_many :events_users, :order => User.name
	has_many :users, through: :events_users
	
	validates :title, :presence => true
	validates :from, :presence => true
	
	STATUS = ["taking_place", "checking", "cancelled"]
	
end
