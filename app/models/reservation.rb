class Reservation < ApplicationRecord
  belongs_to :user , dependent: :destroy
  
  validates: guest_number, presence:true, numericality: {only_integer: true, greater_than: 0, less_than: 50}
  validates: table_number, presence:true
  validate: book_time, presence: true
end
