class PostsController < ApplicationController

  def index
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :back
    end

      # redirect_to :controller => 'profile', :action => 'index'

  end

  private

  def post_params
    params.require(:post).permit(:user_id, :origin, :destination, :packet_id, :item_name, :item_description, :reward_amount)
  end

end
