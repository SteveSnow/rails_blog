class CommentsController < ApplicationController
  def index
    @posts = Post.all
    @comments = Comment.all
    if @comments.present?
      flash[:notice] = "Comments displayed"
    else
      flash[:alert] = "There are no comments to diplay"
    end
  end
  def new
  end
  def create
  end
  def edit
  end
  def update
  end
  def show
    @post_comments = Post.comments.all
      if @post_comments.present?
      flash[:notice] = "Comments displayed"
    else
      flash[:alert] = "There are no comments to diplay"
    end
  end
  def destroy
    # @comment = Comment.find(params[:id])
    # if @comment.destroy
    #   flash[:notice] = "Comment deleted"
    # else
    #   flash[:alert] = "There was a problem deleting the comment."
    # end
    # redirect_to '/'
    puts "PARAMS ARE" + params.inspect
  end
end
