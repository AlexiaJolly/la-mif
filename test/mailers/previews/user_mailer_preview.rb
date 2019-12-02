class UserMailerPreview < ActionMailer::Preview
  def welcome
    UserMailer.with(email: 'dev@gmail.com', inviter: User.first, event: Event.last).welcome
  end
end
