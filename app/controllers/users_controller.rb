class UsersController < ApplicationController

  def show
#  binding.pry
  @user = User.find(params[:id])
  @nows = @user.nows.all
  @now = Now.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end

