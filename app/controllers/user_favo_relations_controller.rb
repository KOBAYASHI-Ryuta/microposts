class UserFavoRelationsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:favorite_id])
    current_user.favor(micropost)
    flash[:success] = 'Micropost をお気に入りにしました'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:favorite_id])
    current_user.unfavor(micropost)
    flash[:success] = 'Micropost のお気に入りを解除しました'
    redirect_to root_url
  end
end
