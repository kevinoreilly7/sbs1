class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_profile
    @current_profile ||= Profile.find_by_id!(session[:profile_id])
  end
  helper_method :current_profile
end
