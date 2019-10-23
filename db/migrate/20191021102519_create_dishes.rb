class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :category
      t.decimal :price

      t.timestamps
    end
  end
end
