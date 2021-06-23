class ApplicationController < ActionController::Base


  def authenticate_user
    unless session[:user_id] == nil
      redirect_to main_index_path
    else 
      redirect_to root_path
    end
  end

  def current_user
    user = User.find(session[:user_id])
  end
end
