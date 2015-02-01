class Candidate < ActiveRecord::Base
	belongs_to :company
	has_many :comments
	
	validates :name, :surname, :email, :phone, :role, :city, :technology, :company_id, presence: true
	
end
