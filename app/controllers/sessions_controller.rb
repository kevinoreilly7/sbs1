class SessionsController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    p = Profile.find_by_email(params[:email])
    if p.present? && p.authenticate(params[:password])
      session[:proflie_id] = @p.id
      redirect_to styles_url, notice: 'Signed in successfully.'
    else
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Signed out successfully."
  end
end
