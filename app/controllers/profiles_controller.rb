class ProfilesController < ApplicationController
  before_action :authenticate_user
  before_action :check_login_user, only: %i[edit update]

  def show
    @user = User.find(params[:id])
    redirect_to root_path unless @user
  end

  def edit
    @user = current_user
  end

  def update
    user = User.find(params[:id])
    if user.update(users_params)
      redirect_to profile_path(user), notice: 'User updated successfully'
    else
      redirect_to root_path, alert: 'An error ocurred'
    end
  end

  private

  def check_login_user
    user = User.find(params[:id])
    redirect_to root_path unless user&.id = current_user.id
  end

  def users_params
    params.require(:user).permit(:username, :photo, :cover_image, :fullname)
  end
end
