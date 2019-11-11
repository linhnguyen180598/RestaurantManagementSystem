class Bill < ApplicationRecord
  has_one :user
  has_many :dishes
  has_many :dish_details
  
  validates: price, presence: true, numericality: {greater_than: 0 }
end
