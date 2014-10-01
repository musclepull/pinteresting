class PagesController < ApplicationController
  def home
  end
  def about
  end
  def privacy
  end
  def terms
  end
  def contact
    def create
    if user_signed_in?  
      GMailNotifier.sendContact(current_user).deliver  
      redirect_to :back, alert: "Message Sent"
    else  
    end
  end
 end
end
