class NowsController < ApplicationController

  def new
  end

  def create
    @now = Now.new(now_params)
    @now.user_id = current_user.id
    @now.save
    redirect_to request.referer
  end

  def index
    @nows = Now.all
    @now_new = Now.new
  end

  def show
  end

  def destroy
   # binding.pry
    @now = Now.find(params[:id])
    @now.destroy
    redirect_to request.referer
  end

  private

  def now_params
    params.require(:now).permit(:now_body, :hobby_code, :address, :latitude, :longitude)
  end
end
