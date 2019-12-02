class EventsController < ApplicationController
  def index
    @user = current_user
    @events = Event.all
    @ideas = Idea.all

    @event = Event.new
    @event.lists.build
  end

  def show
    @user = current_user
    @event = Event.find(params[:id])

    @lists = @event.lists
    @ideas = Idea.all
  end

  def new
    @event = Event.new
    @event.lists.build
  end

  def create
    @event = Event.new(events_params)
    @event.user = current_user
    @event.lists.last.user = current_user
    @event.save
    redirect_to event_path(@event)
  end

  def events_params
    params.require(:event).permit(:name, :date, lists_attributes: [:title])
  end
end


