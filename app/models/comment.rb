class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :dish
  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :dish_id, presence: true
  validates :body, presence: true, length: { maximum: 300 }
end
