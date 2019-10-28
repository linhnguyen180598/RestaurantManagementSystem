class User < ApplicationRecord
  has_many :reservations
  has_many :bill_details
  has_many :dish_details, through: :bill_details

  has_secure_password

  validates: name, presence: true, length: { maximum: 80 }
  validates: email, presence: true, length: { maximum: 255 }, email: true
  validates: phone, presence: true, length: { maximum: 20}
  VALID_PHONE_REGEX = (?:\+?|\b)[0-9]{10}\b
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  format: { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }
end
