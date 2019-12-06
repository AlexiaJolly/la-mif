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
    @event = Event.find_by(id: params[:id])
    @event = Event.find_by(token: params[:id]) if @event.nil?

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
    redirect_to list_path(@event.lists.first.id)
  end

  def invite_users
    @event = Event.find(params[:id])
    @emails = params[:emails].reject(&:empty?)

    @emails.each do |email|
      UserMailer.with(email: email, inviter: current_user, event: @event).welcome.deliver_now
    end

    redirect_to events_path
  end

  def events_params
    params.require(:event).permit(:name, :date, lists_attributes: [:title])
  end
end


