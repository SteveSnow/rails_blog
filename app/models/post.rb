class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :posts_hashtags
	has_many :hashtags, through: :posts_hashtags
end
