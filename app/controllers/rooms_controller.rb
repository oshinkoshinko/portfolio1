class RoomsController < ApplicationController

  def index
    @user = User.find(params[:id])
    rooms = current_user/user_rooms.pluck(:room_id)
  end

end
