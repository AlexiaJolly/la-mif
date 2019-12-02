class EventsController < ApplicationController
  def index
    @user = current_user
    @events = Event.all
    @ideas = Idea.all
  end

  def show
    @event = Event.find(params[:id])
    @lists = @event.lists
    @ideas = Idea.all
    @user = current_user
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

  def invite_users

  end

  def events_params
    params.require(:event).permit(:name, :date, lists_attributes: [:title])
  end
end


