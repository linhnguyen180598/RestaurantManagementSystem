class Dish < ApplicationRecord
  enum category: { appetizer: 0, main: 1, drinks: 2, salad: 3, dessert: 4}
  belongs_to :dish_detail

  validates: name, presence: true, length: { maximum: 200 }
  validates: category, presence: true
  validates: price, presence: true, numericality: {greater_than: 0 }
end
