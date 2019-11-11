class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, index: true
      t.string :password_digest
      t.string :phone
      t.string :remember_digest
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
