module HomeHelper
  def delete_button
    if current_user
      if current_user.id == comment.user_id
        link_to("Delete Comment", comment_path(comment.id), method: :delete)
      end
    end
  end
end
