class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :table, optional: true
  
  validates :guest_number, presence: true, numericality: {only_integer: true, greater_than: 0, less_than: 50}
  validates :book_time, presence: true
  validate :book_time_cannot_be_in_the_past

  def book_time_cannot_be_in_the_past
    if book_time.present? && book_time < Date.today
      errors.add(:book_time, "book time cant be in the past")
    end
  end
end
