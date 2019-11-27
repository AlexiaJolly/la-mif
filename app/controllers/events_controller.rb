class EventsController < ApplicationController
  def index
    # @events = current_user.events
    @events = Event.all
    # @event = Event.new
    # @ideas = Idea.all
  end

  def show
    @event = Event.find(params[:id])
    @lists = @event.lists
    @ideas = Idea.all
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
