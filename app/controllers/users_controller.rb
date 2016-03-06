class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to user_path user
  end

  def new

  end

  def edit
    @user=get_user
  end

  def show
    @user=get_user
    @posts=[]
    @users=User.all

    @user.user_follows.each do |d|
      User.find(d.follows_id).posts.each do |u|
        @posts.push(u)
      end
    end
  end

  def destroy

  end

  def update
    user=User.update(user_edit_params)
  end

  def get_user
    return User.find_by_id(session[:user_id])
  end

  def check_session
    return session[:id]==params[:id]
  end

  def add_post
    @user=get_user
    if !params[:message].nil?
      # binding.pry
      @user.posts.create(message: params[:message])
    end

    redirect_to user_path session[:user_id]
  end

  def follow
    user=get_user
    user.follow_user(params[:id])
    redirect_to user_path session[:user_id]
  end

  def unfollow
    user=get_user
    user.unfollow_user(params[:id])
    redirect_to user_path session[:user_id]
  end

  def delete_post
    user=get_user
    if params[:post]
      user.posts.delete(params[:post])
    end
    redirect_to user_path session[:user_id]
  end

  def find
  	@user=get_user
  	@users=User.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password)
  end
  def user_edit_params
    params.require(:user).permit(:first_name,:last_name,:email)
  end
end
