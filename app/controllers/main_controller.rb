class MainController < ApplicationController
  def create
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      redirect_to root_path
    else
      @user = User.find_by(username: params[:username])
      if @user
        session[:user_id] = @user.id
        redirect_to root_path
      else
        redirect_to registrations_path, alert: "User doesn't exists"
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to registrations_path
  end
end
