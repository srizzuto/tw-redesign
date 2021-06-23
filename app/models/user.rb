class User < ApplicationRecord

  has_many :opinions, foreign_key: :author_id
  has_many :followings, foreign_key: :follower_id
  has_many :following_users, through: :followings, source: :followed
  has_many :inverse_followings, class_name: 'Following', foreign_key: :followed_id
  has_many :followers, through: :inverse_followings, source: :follower

  validates :username, uniqueness: true, presence: true, length: { in: 4..15 }
  validates :fullname, presence: true, length: { in: 4..15 }

  def format_username
    self.username = username.delete(' ').downcase.to_s
  end

  def people_to_follow
    User.where.not(id: Array.wrap(following_users)).and( User.where.not(id: self.id))
  end

  def following?(follower)
    !following_users.where(id: follower.id).empty?
  end
end
