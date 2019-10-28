class Staff < ApplicationRecord
  belongs_to :cashflow

  validates: name, presence: true, length: { maximum: 80 }
  validates: email, presence: true, length: { maximum: 255 }
  validates: phone, presence: true, length: { maximum: 20}
  validates: payrate, presence: true, numericality: {greater_than: 0 }
  validates: hour_worked, presence: true
  VALID_PHONE_REGEX = (?:\+?|\b)[0-9]{10}\b
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  format: { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }
end
