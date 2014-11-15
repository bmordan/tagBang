class LikesController < ApplicationController
   
  def new
    @like = Like.new
  end

  def create
    Like.create(:user_id => params[:user_id], :post_id => params[:photo_id])
  end
  
end