class CreateCashflows < ActiveRecord::Migration[5.2]
  def change
    create_table :cashflows do |t|
      t.decimal :bill_total

      t.timestamps
    end
  end
end
