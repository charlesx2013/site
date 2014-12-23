class ContactMailer < ActionMailer::Base
  default from: "charlesx@gmail.com"

  def contact_email(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message
    1/0
  end
end
