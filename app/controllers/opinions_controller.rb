class OpinionsController < ApplicationController

  #before_action :authenticate_user

  def index
    redirect_to registrations_path if session[:user_id] == nil
  end

  def create
    
  end

  private
  def opinons_params
    params.require(:opinon).permit(:text)
  end
end
