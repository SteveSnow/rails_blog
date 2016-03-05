class HomeController < ApplicationController

  def index
    post_user_id = Relationship.where(follower_id: session[:user_id]).pluck(:follows_id)
    @posts = Post.where(user_id: post_user_id)
  end
end


