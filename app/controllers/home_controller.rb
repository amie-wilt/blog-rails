class HomeController < ApplicationController
  # before_filter :authenticate_user!

  def index
    @posts = Post.order("created_at DESC").limit(3)
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
  end

  # Do I need params here?
end
