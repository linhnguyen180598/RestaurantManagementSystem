class Utility < ApplicationRecord
  has_many :ingredients
  has_many :staffs
  has_many :utilities
end
