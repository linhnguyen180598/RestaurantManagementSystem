class Table < ApplicationRecord
  has_many :users
  has_many :reservations

  validates :table_number, uniqueness: true
  validates :capacity, numericality: {only_integer: true}
end
