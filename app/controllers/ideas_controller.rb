class IdeasController < ApplicationController


  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(ideas_params)
    @idea.save
  end

  def ideas_params
    params.require(:idea).permit(:name, :date, :token)
  end

end
