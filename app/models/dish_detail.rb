class DishDetail < ApplicationRecord
  has_one :dish
  belongs_to :bill_detail
end
