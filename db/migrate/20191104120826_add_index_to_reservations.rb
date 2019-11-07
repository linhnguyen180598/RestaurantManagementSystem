class AddIndexToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :reservation_id ,:integer, index: true
    add_references :reservations, :tables, index: true
  end
end
