class Opinion < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :text, presence: true, length: { in: 1..200 }

  scope :order_by_most_recent, -> { includes(:author).order('created_at DESC') }
end
