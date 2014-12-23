class ContactMailer < ActionMailer::Base
  default from: "charlesx@gmail.com"

  def contact_email(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message
    mail(to: "charlesx@gmail.com", subject: subject)
  end
end
