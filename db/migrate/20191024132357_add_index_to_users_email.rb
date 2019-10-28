class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :index, :integer
  end
end
