class User < ApplicationRecord
  has_many :reservations
  has_many :bill_details
  has_many :dish_details, through: :bill_details
end
