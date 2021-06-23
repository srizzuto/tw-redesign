class ProfilesController < ApplicationController
  
  def index
    
  end

  def show
    @user = User.find(params[:id])
    redirect_to root_path unless @user
  end
end