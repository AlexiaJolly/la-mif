class IdeasController < ApplicationController

  def new
    @idea = Idea.new
  end

  def create
    @event = Event.new(ideas_params)
    @event.save
  end

  def ideas_params
    params.require(:event).permit(:name, :date, :token)
  end

end
