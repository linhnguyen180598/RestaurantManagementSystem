class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.int :category
      t.decimal :price

      t.timestamps
    end
  end
end
