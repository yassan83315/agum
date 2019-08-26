class User::PostsController < ApplicationController
 
 
  def new
    @post = Post.new
  end

  def index
     @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "投稿に成功しました。"
      redirect_to user_posts_path
    else
      redirect_to new_user_post_path
      flash[:notice] = "投稿に失敗しました。"
    end
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
    def post_params
      params.require(:post).permit(:season_id, :region_id, :user_id, :favorite_id, :image, :caption )
    end

end
