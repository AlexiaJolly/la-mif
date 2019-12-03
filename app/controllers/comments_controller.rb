class CommentsController < ApplicationController

  def create
    @comment = Comment.create!(description: params[:comment][:description], idea: Idea.find(params[:idea_id]), user: current_user)
    respond_to do |format|
      format.html do
        redirect_to list_path(Idea.find(params[:idea_id]).list)
      end
      format.js
    end




  end

end
