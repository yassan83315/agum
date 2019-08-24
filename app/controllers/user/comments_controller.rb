class User::CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  end

  def edit
  	@comment = Comment.find(params[:id])
  end

  def show
  	@comment = Comment.find(params[:id])
  end

  def create
  	@commnet = Comment.new
  	if @comment.save
  		flash[:notice] = "コメントしました"
  	else
 		flash[:alert] = "コメントできませんでした"
  	end
  	 redirect_to user_comments_new_path
  end

  def update
  	@comment = Comment.find(params[:id])
  	if @comment.update
  		flash[:notice] = "コメント内容を変更しました"
  		redirect_to user_comment_show_path
  	else
  		flash[:alert] = "コメントに内容の変更に失敗しました"
  		redirect_to user_comments_edit_path
  	end
  end

  private

  def comment_params
  	params.require(:comment).permit(:post_id)
  end
end