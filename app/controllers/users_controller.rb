class UsersController < ApplicationController


def idea_chosen_by_user

@list = current_user.lists.find(params[:list_id])
end


end

