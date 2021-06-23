class OpinionsController < ApplicationController

  before_action :authenticate_user

  def index
    @opinion = Opinion.new
    @opinions = current_user.all_opinions
    @people_to_follow = current_user.people_to_follow.order('created_at DESC')
  end

  def create
    user = current_user
    @opinion = user.opinions.build(opinions_params)
    if @opinion.save
      redirect_to root_path, notice: "Tweet posted!"
    else
      render :index, alert: "Something went wrong"
    end
  end

  private
  def opinions_params
    params.require(:opinion).permit(:text)
  end
end
