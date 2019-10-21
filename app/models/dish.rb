class Dish < ApplicationRecord
  enum category: { appetizer: 0, main: 1, drinks: 2, salad: 3, dessert: 4}
  belongs_to :dish_detail
end
