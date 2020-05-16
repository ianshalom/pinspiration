class CommentsController < ApplicationController

  def new
    @comments = Comment.all
  end

  def create
    @comment = Comment.new(comments_params)
    @comment.save
    redirect_to root_path
  end

private

  def comments_params
    params.require(:comment).permit(:body, :pin_id)
  end

end