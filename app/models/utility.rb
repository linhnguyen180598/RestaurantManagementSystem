class Utility < ApplicationRecord
  has_many :ingredients
  has_many :staffs
  has_many :utilities

  validates: price, numericality: {greater_than: 0 }, presence: true
end
