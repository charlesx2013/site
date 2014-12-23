class StaticPagesController < ApplicationController
  def index
  end

  def contact
    UserMailer.contact_email(params[:email],
                             params[:subject],
                             params[:message]).deliver
    flash[:notice] = "Thanks for sending us an email. We'll get back to you soon!"
    redirect_to root_path
  end
end
