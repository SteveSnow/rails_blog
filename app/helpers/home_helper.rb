module HomeHelper
  def greeting
    if current_user
      "Hello " + current_user.first_name.capitalize
    else
      "Hello Guest"
    end
  end

  def comment_form
    if current_user
      form_for Comment.new do |f|
        f.hidden_field :user_id, :value => current_user.id
        f.hidden_field :post_id, :value => post.id
        f.label :Comment
        f.text_field :message
        f.submit :Comment
      end
    end
  end

end
