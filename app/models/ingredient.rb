class Ingredient < ApplicationRecord
  belongs_to :cashflow

  validates :name, presence: true
  validates :price, presence: true, numericality: {greater_than: 0 }
  validates :unit, presence: true
end
