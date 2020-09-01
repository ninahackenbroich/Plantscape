class AddColumnToChatrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chatrooms, :customer_id, :integer, null: false
    add_column :chatrooms, :admin_id, :integer, null: false
    add_index :chatrooms, :customer_id
    add_index :chatrooms, :admin_id
    add_index :chatrooms, [:customer_id, :admin_id], unique: true
  end
end
