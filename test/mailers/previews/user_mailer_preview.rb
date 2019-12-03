class UserMailerPreview < ActionMailer::Preview
  def welcome
    UserMailer.with(email: 'la.mif.wagon@gmail.com', inviter: User.first, event: Event.last).welcome
  end
end
