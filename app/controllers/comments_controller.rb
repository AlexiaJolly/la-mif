class CommentsController < ApplicationController

  def create
    Comment.create!(description: params[:comment][:description], idea: Idea.find(params[:idea_id]), user: current_user)
    redirect_to list_path(Idea.find(params[:idea_id]).list)
  end

end
