class Admin::RegionsController < ApplicationController
  def new
    @region = Region.new
  end

  def edit
    @region = Region.find(params[:id])
  end

  def create
    @region = Region.new(region_params)
      if @region.save
        flash[:notice] = "項目の登録に成功しました"
      else
        flash[:notice] = "項目の登録に失敗しました"
      end
    redirect_to new_admin_region_path
  end

  def update
    @region = Region.find(params[:id])
      if @region.update(region_params)
        flash[:notice] = "項目内容を変更しました"
        redirect_to admin_posts_path
      else
        flash[:alert] = "項目内容の変更に失敗しました"
        redirect_to edit_admin_region_path
      end
  end


  private

  def region_params
    params.require(:region).permit(:region_name)
  end

end