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

  def update
    @idea = Idea.find(params[:id])
    @is_me = @idea.list.user == current_user
    if @idea.chosen_by_id == current_user.id
      @idea.chosen_by_id = nil
      @idea.status = true
    else
      @idea.chosen_by_id = current_user.id
      @idea.status = false
    end
    @idea.save
    if @idea.save
      respond_to do |format|
        format.html { redirect_to event_path(@idea.list.event) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'events/show' }
        format.js  # <-- idem
      end
    end
  end

  def ideas_params
    params.require(:idea).permit(:title, :description, :url, :photo)
  end
end
