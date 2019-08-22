class User::FavoritesController < ApplicationController

	def create
	end

	def destroy
	end

	private
	def favorite_params
		params.require(:favorite).permit(:user_id, :post_id)
	end
end
