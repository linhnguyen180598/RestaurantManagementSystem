class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.int :table_number
      t.int :guest_number

      t.timestamps
    end
  end
end
