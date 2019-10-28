class BillDetail < ApplicationRecord
  has_many :dish_details
  has_many :dishes, through: :dish_details
  belongs_to :cashflow
  belongs_to :user

  validates: price, presence: true, numericality: {greater_than: 0 }
end
