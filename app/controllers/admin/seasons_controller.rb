class Admin::SeasonsController < ApplicationController
  def new
    @season = Season.new
  end

  def edit
    @season = Season.find(params[:id])
  end

  def create
    @season = Season.new(season_params)
      if @season.save
        flash[:notice] = "項目の登録に成功しました"
      else
        flash[:alert] = "項目の登録に失敗しました"
      end
    redirect_to new_admin_season_path
  end

  def update
    @season = Season.find(params[:id])
    if @season.update(season_params)
      flash[:notice] = "項目内容の変更に成功しました"
      redirect_to admin_posts_path
    else
      flash[:alert] = "項目内容の変更に失敗しました"
      redirect_to edit_admin_season_path
    end
  end

  private

  def season_params
    params.require(:season).permit(:season_name)
  end

end
