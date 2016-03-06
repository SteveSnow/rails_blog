class SessionsController < ApplicationController
	def new
 
	end

	def create
 		user = User.find_by(email: params[:session][:email].downcase)
    	if (user && user.password==params[:session][:password])
      		session[:user_id] = user.id      		
    	end
      		redirect_to '/'
    	
	end

	def destroy
		if session[:user_id]
			session.clear
		end
		redirect_to '/'
	end

    def current_user
    	@current_user ||= User.find_by(id: session[:user_id])
  	end
  

end