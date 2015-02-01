class Company < ActiveRecord::Base
	has_many :candidates
	has_many :notes
	has_many :contacts
	
	validates :name, :client, :address, presence: true
end
