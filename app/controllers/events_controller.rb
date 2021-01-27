class EventsController < ApplicationController

  def new
    @event = Event.new
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to request.referer
  end

  def event_params
    params.require(:event).permit(:title, :introduction, :price, :date, :month, :year, :time, :place)
  end

end
