class SendWelcomeMailJob < ApplicationJob
  queue_as :welcome_mail

  after_perform do |job|
    record = job.arguments.first
    # Do something with the record
    record.update(welcome_mail: true)
  end

  def perform(user)
    UserMailer.welcome_email(user).deliver_now
  end
end
