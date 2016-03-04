class Hashtag < ActiveRecord::Base
	has_many :posts_hashtags
 	has_many :posts, through: :posts_hashtages
end
