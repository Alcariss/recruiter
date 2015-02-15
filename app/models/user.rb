class User < ActiveRecord::Base
	has_many :notes
	has_many :comments
	has_secure_password
	
	validates_confirmation_of :password
	validates_uniqueness_of :email
	
	validates :email, presence: true
end
