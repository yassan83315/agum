class Post < ApplicationRecord

	attachment :image
	belongs_to :user
	
	belongs_to :season
	belongs_to :region
	
end
