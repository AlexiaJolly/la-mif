class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
    @list = current_user.lists.find(params[:list_id])
  end

  def new_comment
    @comment = Comment.new
    @list = current_user.lists.find(params[:list_id])
    @idea.list = @list
  end

  def create
    @list = current_user.lists.find(params[:list_id])
    @idea = Idea.new(ideas_params)
    @idea.user = current_user
    @idea.list = @list

    if @idea.save
      redirect_to events_path
    else
      render :new
    end
  end

  def ideas_params
    params.require(:idea).permit(:title, :description, :url, :photo)
  end
end
