class LikesController < ApplicationController
   
  def new

  end

  def create
    @like = Like.create(like_params)
  end

  def like_params
    params.require(:like).permit(:user_id,:post_id)
  end
end