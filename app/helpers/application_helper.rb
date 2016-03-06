module ApplicationHelper
	def current_user
		return User.find_by_id(session[:user_id])
	end

  def find_user_name (user_id)
    first_name = User.find_by_id(user_id).first_name
    last_name = User.find_by_id(user_id).last_name
    if !first_name.nil? && !last_name.nil?
    return first_name + " " + last_name
    end
    
  end
end
