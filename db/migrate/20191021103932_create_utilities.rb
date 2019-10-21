class CreateUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities do |t|
      t.datetime :time
      t.decimal :water
      t.decimal :eletricity
      t.decimal :rent

      t.timestamps
    end
  end
end
