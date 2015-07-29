 class AddAdminIdToSales < ActiveRecord::Migration
  def change
    add_column :sales, :admin_id, :string
    add_index :sales, :admin_id
    add_column :sales, :publication_id, :string
    add_index :sales, :publication_id
  end
end
