class EventsController < ApplicationController


  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(events_params)
    @event.save
  end

  def events_params
    params.require(:event).permit(:name, :date, :token)
  end

end
