module HomeHelper
  def greeting
    if current_user
      "Hello " + current_user.first_name.capitalize
    else
      "Hello Guest"
    end
  end

end
