class SendWelcomeMailJob < ApplicationJob
  queue_as :welcome_mail

  def perform(user)
    UserMailer.welcome_email(user).deliver_now
  end
end
