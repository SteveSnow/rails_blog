class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.message.length > 150
      flash[:limit] = "Your comment must be less than 150 charactors."
      redirect_to '/'
    elsif @comment.message.length >= 1
      @comment = Comment.create(comment_params)
      redirect_to '/'
    else
      flash[:limit] = "There was an error with your comment entry."
      redirect_to '/'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    if comment.destroy
    else
      flash[:alert] = "There was a problem deleting the comment."
    end
    redirect_to '/'
  end

    private

  def comment_params
    params.require(:comment).permit(:user_id,:post_id,:message)
  end

end
