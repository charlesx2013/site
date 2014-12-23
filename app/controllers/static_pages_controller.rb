class StaticPagesController < ApplicationController
  def index
  end

  def contact
    ContactMailer.contact_email(params[:email],
                             params[:subject],
                             params[:message]).deliver
    flash[:success] = "Thanks for sending me an email. I'll get back to you soon!"
    redirect_to root_path
  end
end
