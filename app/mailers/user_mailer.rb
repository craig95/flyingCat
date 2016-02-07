class UserMailer < ApplicationMailer
  default from: "crvheerden@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => 'crvheerden@gmail.com',
      :subject => "A new contact form message from #{name}")
  end
end
