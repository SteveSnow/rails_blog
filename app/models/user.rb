class User < ActiveRecord::Base
  has_many :posts

  def follow_user(i)
    if (Relationship.where(follower_id:self.id,follows_id:i).count==0)
      Relationship.create(follower_id:self.id,follows_id:i)
    end
  end

  def unfollow_user(i)
    Relationship.delete(Relationship.where(follower_id:self.id,follows_id:i))
  end

  def user_follows
    return @follows=Relationship.where(follower_id:self.id)
  end

end
