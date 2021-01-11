class RelationshipsController < ApplicationController

  def create
    #ajax用に@user追加
    #@user = User.find(params[:id])
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  def destroy
    #@user = User.find(params[:id])
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end

  def follow
    @user = User.find(params[:user_id])
    @users = @user.following_user
    #binding.pry
  end

  def unfollow
    @user = User.find(params[:user_id])
    @users = @user.follower_user
  end

end
