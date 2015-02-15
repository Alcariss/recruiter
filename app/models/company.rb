class Company < ActiveRecord::Base
	has_many :candidates
	has_many :notes
	has_many :contacts
	
	validates :name, :address, presence: true
	
	geocoded_by :address
	
	after_validation :geocode, :if => :address_changed?
end
