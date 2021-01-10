class FavoritesController < ApplicationController

  def create
    now = Now.find(params[:now_id])
    favorite = current_user.favorites.new(now_id: now.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    now = Now.find(params[:now_id])
    favorite = current_user.favorites.find_by(now_id: now.id)
    favorite.destroy
    redirect_to request.referer
  end

end
