class EventUsersController < ApplicationController

  def create
    @event_user = EventUser.find_by(params[:event_id])
    #@event_user = EventUser.find(event_user_params)
    #binding.pry
    @event_user.create
    redirect_to request.referer
    binding.pry
  end

  def event_user_params
    params.require(:event_user).permit(:user_id, :event_id, :payment_method)
  end

end
