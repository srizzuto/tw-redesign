class FollowingsController < ApplicationController

  before_action :authenticate_user
  
  def create
    user = User.find(params[:id])
    if user && !current_user.following?(user)
      following = current_user.followings.build(followed_id: params[:id])
      if following.save
        redirect_to request.referrer, notice: "You started following #{user.fullname}"
      else
        redirect_to request.referrer, alert: "Something went wrong"
      end
    else
      redirect_to request.referrer, alert: "Invalid user"
    end
  end

  def destroy
    user = User.find(params[:id])
    if user && current_user.following?(user)
      following = current_user.followings.find_by(followed_id: user.id)
      if following&.destroy
        redirect_to request.referrer, notice: "You unfollowed #{user.fullname}"
      else
        redirect_to request.referrer, alert: "Something went wrong"
      end
    else
      redirect_to request.referrer, alert: "Invalid user"
    end
  end
end
