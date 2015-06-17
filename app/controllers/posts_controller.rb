class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  before_action :require_authenticated_user, :except => [:index, :show]

  def index
    # if params[:mine]
    #   @posts = current_user.try(:posts)  => used for toggling between user posts and general posts
    # end
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
    @comments = Comment.all
  end

  def new
    @post = current_user.posts.new
  end

  def edit
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:user_id, :title, :date, :author, :body, :all_tags)
  end
end
