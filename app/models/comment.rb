class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :candidate
	
	validates :user_id, :candidate_id, :content, presence: true
	validates :content, length: { maximum: 140 }
end
