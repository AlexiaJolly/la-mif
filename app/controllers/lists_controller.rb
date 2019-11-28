class ListsController < ApplicationController
  def index
    @lists = List.all
    @user = current_user
  end
end
