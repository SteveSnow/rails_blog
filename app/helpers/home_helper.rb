module HomeHelper
  def greeting
    if current_user
      "Hello " + current_user.first_name.capitalize + " Come Ride the Rails!"
    else
      "Hello Guest"
    end
  end

end
