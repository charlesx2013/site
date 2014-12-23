class ContactMailer < ActionMailer::Base
  default from: ENV["EMAIL"]

  def contact_email(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message
    mail(to: ENV["EMAIL"], subject: subject)
  end
end
