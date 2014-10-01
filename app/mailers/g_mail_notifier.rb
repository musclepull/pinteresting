class GMailNotifier < ActionMailer::Base
   def sendContact(user)
    @greeting = "You have received a contact us"
    @user = user
    mail(from: user.email , to: "aravindgopinath88@gmail.com" , subject: 'Contact me:')
  end
end
