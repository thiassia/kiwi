class UserMailer < ActionMailer::Base
  default :from => "registration@rafiki.com"
  
  def registration_confirmation(user)
    @user = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.email} <#{user.email}>", :subject => "Welcome to KiwiAds aka Rafiki.com")
  end
end