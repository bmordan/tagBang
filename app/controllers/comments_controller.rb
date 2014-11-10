class CommentsController < ApplicationController
  
  skip_before_action :verify_authenticity_token, :only => [:create]

  def create
    Comment.create(comment: params[:comment],post_id: params[:post_id],handle: params[:handle])
    redirect_to posts_path
  end

end
