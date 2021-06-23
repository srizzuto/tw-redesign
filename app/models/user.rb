class User < ApplicationRecord

  before_save :add_images

  has_many :opinions, foreign_key: :author_id
  has_many :followings, foreign_key: :follower_id
  has_many :following_users, through: :followings, source: :followed
  has_many :inverse_followings, class_name: 'Following', foreign_key: :followed_id
  has_many :followers, through: :inverse_followings, source: :follower
  has_one_attached :photo
  has_one_attached :cover_image

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

  def all_opinions
    Opinion.where(author: (following_users.to_a << self)).order_by_most_recent
  end 

  private
  def add_images
    unless self.photo.attached?
    self.photo.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'blank-pfp.png')), filename: 'blank-pfp.png',
    content_type: 'image/jpg')
    end
    
    return if self.cover_image.attached?
    
    self.cover_image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'cover-default.jpg')),
    filename: 'cover-default.jpg', content_type: 'image/png')
  end 
end
