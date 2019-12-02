class UserMailer < ApplicationMailer
  def welcome
    @email = params[:email]
    @inviter = params[:inviter]
    @event = params[:event]
    mail(to: @email, subject: 'Bievenue dans La Mif !')
    # This will render a view in `app/views/user_mailer`!
  end
end
