class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :guest_number
      t.datetime :book_time
      t.integer :user_id, index: true
      t.integer :table_id , index: true

      t.timestamps
    end
  end
end
