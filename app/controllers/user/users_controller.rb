class User::UsersController < ApplicationController
  def show
  	@user = current_user
  	@post = Post.where(user_id: params[:id])
  end

  def edit
  	@user = User.find(current_user)
  end

  def update
  	@user = User.find(params[:id])
  	if user.update
  		redirect_to user_user_path(current_user)
  	else
  		redirect_to edit_user_user_path(current_user)
  	end
  end

  private
  	def user_params
  		params.require(:user).permit(:post_id, :name, :last_name, :first_name, :last_name_kana, :first_name_kana, :street_adress, :postal_code, :phone_number, :email, :password, :is_deleted)
  	end
end
