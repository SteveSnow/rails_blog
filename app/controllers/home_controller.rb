class HomeController < ApplicationController

  def index
  	@user = User.find_by_id(session[:user_id])
    @posts = []
    post_user_id = Relationship.where(follower_id: session[:user_id]).pluck(:follows_id)

    Post.where(user_id: post_user_id).each do |other_user_post|
      @posts.push(other_user_post)
    end

    Post.where(user_id: session[:user_id]).each do |current_user_post|
      @posts.push(current_user_post)
    end

    @posts.sort! { |a,b| a.created_at <=> b.created_at }
  end

end


