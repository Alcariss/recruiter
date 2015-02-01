class Note < ActiveRecord::Base
	belongs_to :user
	belongs_to :company
	
	validates :user_id, :company_id, :content, presence: true
	validates :content, length: { maximum: 140 }
end
