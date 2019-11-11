class Reservation < ApplicationRecord
  belongs_to :user , dependent: :destroy
  belongs_to :table
  
  validates :guest_number, presence: true, numericality: {only_integer: true, greater_than: 0, less_than: 50}
  validates :table_number, presence: true
  validates :book_time, presence: true
end
