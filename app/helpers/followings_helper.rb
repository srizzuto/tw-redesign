module FollowingsHelper

  def following_btn(follower)
    check = current_user.following?(follower)
    if follower.id == current_user.id
      ""
    else
      check ? link_to("<i class='fas fa-times red my-auto pfp-icons'></i>".html_safe, following_path(follower), method: :delete) : link_to("<i class='fas fa-plus-circle lightblue my-auto pfp-icons'></i>".html_safe, followings_path(:id => follower.id), method: :post)
    end
  end
end
