class AddUserToAdmins < ActiveRecord::Migration
  def change
  	add_column :admins, :user, :string
  	add_column :admins, :role, :string
  end
end
