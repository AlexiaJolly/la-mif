class IdeasController < ApplicationController

  def index
    @ideas = Idea.all.order(id: :asc)
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
    @list = current_user.lists.find(params[:list_id])
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def create
    @list = current_user.lists.find(params[:list_id])
    @idea = Idea.new(ideas_params)
    @idea.user = current_user
    @idea.list = @list

    if @idea.save
      redirect_to list_path(@idea.list)
    else
      render :new
    end
  end

  def update

    @idea = Idea.find(params[:id])
    @is_me = @idea.list.user == current_user
    @list = params[:list]
    @bought = params[:bought]

    if @idea.update(ideas_params)
        ActionCable.server.broadcast("list_#{@idea.list.id}", {
          idea_content_partial: ApplicationController.renderer.render(
            partial: "lists/list_show_ideacontent",
            locals: { list: @idea.list, idea: @idea, current_user: current_user }
          ),
          idea_id: @idea.id
        })

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

  def bought
    @idea = Idea.find(params[:id])
    @idea.update(bought: !@idea.bought)
    respond_to do |format|
      format.html do
        redirect_to '/giftlist'
      end
      format.js #
    end


  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    redirect_to '/events'
  end

  def ideas_params
    params.require(:idea).permit(:title, :description, :url, :photo, :chosen_by_id, :status, :bought)
  end
end
