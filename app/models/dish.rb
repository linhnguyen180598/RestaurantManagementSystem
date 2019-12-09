class Dish < ApplicationRecord
  enum category: { Appetizer: 1, Main: 2, Drinks: 3, Salad: 4,Dessert: 5}
  has_many :dish_details
  has_many :comments, dependent: :destroy

  validates :name, presence: true, length: { maximum: 200 }
  validates :category, presence: true
  validates :price, presence: true, numericality: {greater_than: 0 }
  validates :description, presence:true, length: { maximum: 200 }
end
