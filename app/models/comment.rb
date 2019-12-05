class Comment < ApplicationRecord
  belongs_to :idea
  belongs_to :user

  after_create :broadcast_message


  def broadcast_message
    ActionCable.server.broadcast("list_#{idea.list.id}", {
      comment_partial: ApplicationController.renderer.render(
        partial: "lists/comment_li",
        locals: { comment: self, user_is_messages_author: false }
      ),
      idea_id: idea.id
    })
  end
end
