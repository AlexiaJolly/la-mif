class ListsController < ApplicationController

  def index
    @lists = List.all
    @user = current_user
  end

  def show
    @list = List.find(params[:id])

    redirect_to list_path(@list.id)
  end


  def lists_params
    params.require(:list).permit(:title)
  end


end
