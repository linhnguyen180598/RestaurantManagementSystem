class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.integer :capacity
      t.boolean :reserved , default: false
      t.string :table_number , index: true

      t.timestamps
    end
  end
end
