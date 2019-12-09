class CreateDishDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_details do |t|
      t.integer :score
      t.integer :dish_id
      t.integer :user_id
      t.string :comment

      t.timestamps
    end
  end
end
