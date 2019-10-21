class Cashflow < ApplicationRecord
  has_many :bill_details
  has_many :ingredients
  has_many :utilities
  has_many :staffs
end
