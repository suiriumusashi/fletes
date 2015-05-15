class AddAdminIdToInboxes < ActiveRecord::Migration
  def change
    add_column :inboxes, :admin_id, :string
    add_index :inboxes, :admin_id
    add_column :inboxes, :user_id, :string
    add_index :inboxes, :user_id
  end
end
