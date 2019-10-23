class CreateDishDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_details do |t|
      t.integer :score
      t.string :comment

      t.timestamps
    end
  end
end
