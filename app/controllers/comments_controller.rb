class CommentsController < ApplicationController
  
  def new
  
  end

  def create
    @comment = Comment.create(comments_params)
    redirect_to posts_path
  end

  def comments_params
    params.require(:comment).permit(:post_id,:comment)
  end
end
