class ApplicationController < ActionController::Base
  helper_method :current_user

  def authenticate_user
    redirect_to registrations_path if session[:user_id] == nil
  end

  def current_user
    user = User.find(session[:user_id])
  end
end
