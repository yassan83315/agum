class Post < ApplicationRecord

	attachment :image
	belongs_to :user
	
	belongs_to :season
	belongs_to :region
	
	validates :image, presence: true
	validates :caption, presence: true, length: { maximum: 200 }
end
