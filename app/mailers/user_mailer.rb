class UserMailer < ActionMailer::Base
  default :from => "sanchitgupta.sg007@gmail.com"
def registration_confirmation(user)
mail(:to => user.email, :subject => "Registered")
end
end
