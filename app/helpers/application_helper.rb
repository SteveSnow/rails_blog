module ApplicationHelper
	def current_user
		return User.find_by_id(session[:user_id])
	end

  def find_user_name (user_id)
    first_name = User.find(user_id).first_name
    last_name = User.find(user_id).last_name
    return first_name + " " + last_name
  end
end
