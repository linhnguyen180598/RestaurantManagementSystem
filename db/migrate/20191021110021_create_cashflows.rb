class CreateCashflows < ActiveRecord::Migration[5.2]
  def change
    create_table :cashflows do |t|
      t.decimal :bill_total
      t.decimal :cost_total
      t.decimal :net_profit
      t.integer :bill_id
      t.integer :ingredient_id
      t.integer :utility_id
      t.integer :staff_id

      t.timestamps
    end
  end
end
