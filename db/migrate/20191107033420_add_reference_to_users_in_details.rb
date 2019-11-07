class AddReferenceToUsersInDetails < ActiveRecord::Migration[5.2]
  def change
    add_references :bill_details, :users, index: true
  end
end
