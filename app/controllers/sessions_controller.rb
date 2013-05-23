class SessionsController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.find_by_email(params[:email])

    if @profile.present? && @profile.authenticate(params[:password])
      session[:proflie_id] = @profile.id
      redirect_to sytles_url, notice: 'Signed in successfully.'
    else
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Signed out successfully."
  end
end
