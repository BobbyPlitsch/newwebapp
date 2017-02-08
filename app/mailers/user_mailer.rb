class UserMailer < ApplicationMailer

  default from: "enquiries@bikesgalore.com"

  def contact_form(email, name, message)
    @message = message
      mail(:from => email,
           :to => 'robertpeitsch@gmx.net',
           :subject => "A new contact form message from #{name}")
  end
end
