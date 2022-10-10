class UserMailer < ApplicationMailer
  default from: 'noreply@example.com'

  layout "mailer"

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    if !@user.welcome_mail?
      mail(to: @user.email, subject: 'welcome to ROCKY shop')
      @user.update(welcome_mail: true)
    end
  end

end
