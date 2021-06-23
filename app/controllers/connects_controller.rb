class ConnectsController < ApplicationController
  def index
    @opinions = current_user.rest_opinions
    @people_to_follow = current_user.people_to_follow
  end
end
