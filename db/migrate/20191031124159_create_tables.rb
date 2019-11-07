class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :table_number
      t.integer :capacity
      
      t.timestamps
    end
    add_index :tables, :table_number, unique: true
  end
end
