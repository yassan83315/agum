class User::UsersController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :show]
  def show
  	@post = Post.find(params[:id])
  	@posts = Post.where(user_id: params[:id])
  	@user = User.find(params[:id])
  end

  def edit
  	@user = current_user
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
  	  flash[:notice] = "ユーザー情報を変更しました"
  		redirect_to user_user_path(current_user)
  	else
  	  flash[:notice] = "ユーザー情報の変更に失敗しました"
  		redirect_to edit_user_user_path(current_user)
  	end
  end

  private
  	def user_params
  		params.require(:user).permit(:post_id, :name, :last_name, :first_name, :last_name_kana, :first_name_kana, :street_adress, :postal_code, :phone_number, :email, :password, :is_deleted)
  	end
end
