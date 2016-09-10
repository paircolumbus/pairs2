class UserMailer < ApplicationMailer
  default from: 'info@paircolumbus.org'
  
  def welcome_email(user)
  	@user = user
  	@url = 'http://paircolumbus.org/'
  	mail(to: @user.email, subject: "Welcome to Pair Columbus!")
  end

end