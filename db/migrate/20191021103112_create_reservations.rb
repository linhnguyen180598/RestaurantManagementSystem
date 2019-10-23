class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :table_number
      t.integer :guest_number

      t.timestamps
    end
  end
end
