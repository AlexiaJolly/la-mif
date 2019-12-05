class ListsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "list_#{params[:list_id]}"
    # stream_from "some_channel"
  end
end
