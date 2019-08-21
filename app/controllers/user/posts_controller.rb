class User::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(prams[:id])
  end

  def edit
    @post = Post.find(params[:find])
  end

  def create
    @post = Post.new
    if @post.save
      redirect_to user_posts_path
    else
      redirect_to new_user_post_path
    end
  end

  def update
    @post = Post.find(prams[:id])
    if @post.update
      redirect_to user_post_path(@post_id)
    else
      redirect_to edit_user_post_path
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destory
      redirect_to user_user_path(@user_id)
    else
      redirect_to edit_user_post_path
    end

  end

  private
    def post_prams
      params.require(:post).permit(:season_id, :region_id, :user_id, :favorite_id, :image_id, :caption )
    end
  end

end
