class HomeController < ApplicationController

  def index
    @posts = Post.all
  end

  def get_user
    return User.find_by_id(params[:id])
  end

  def check_session
    return session[:id]==params[:id]
  end

end


