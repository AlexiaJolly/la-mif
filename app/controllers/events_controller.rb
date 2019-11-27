class EventsController < ApplicationController

  def index
    @events = Event.all
    @event = Event.new
  end



  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params)
    @event.save
  end

  def events_params
    params.require(:event).permit(:name, :date, :token)
  end


end
