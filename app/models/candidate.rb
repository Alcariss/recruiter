class Candidate < ActiveRecord::Base
	belongs_to :company
	has_many :comments
	has_many :placementprocesses
	
	mount_uploader :attachment, AttachmentUploader
	
	validates :name, :surname, :email, :phone, :role, :city, :technology, :company_id, presence: true
	
	def full_name
     name + ' ' + surname
    end
	
	def self.search(query)
		where("surname like ?", "%#{query}%")
	end
	
end
