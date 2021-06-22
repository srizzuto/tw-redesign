class User < ApplicationRecord

  validates :username, uniqueness: true, presence: true, length: { in: 4..15 }
  validates :fullname, presence: true, length: { in: 4..15 }

  def format_username
    self.username = username.delete(' ').downcase.to_s
  end
end
