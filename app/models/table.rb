class Table < ApplicationRecord
  has_many :users, through: :reservations
  has_many :reservations
  
  def reserved?
    reservations.present?
  end

end
