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
		return User.find_by_id(params[:id])
	end

	def check_session
		return session[:id]==params[:id]
	end

	private

	def user_params
		params.require(:user).permit(:first_name,:last_name,:email,:password)
	end
	def user_edit_params
		params.require(:user).permit(:first_name,:last_name,:email)
	end
end



