class AddUserToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :user, :string
  	add_column :users, :avatar, :string
  	add_column :users, :phone, :string
  	add_column :users, :street, :string
  	add_column :users, :colony, :string
  	add_column :users, :number, :integer
  	add_column :users, :town, :string
  	add_column :users, :company, :string
  	add_column :users, :rfc, :string
  	add_column :users, :description, :text
  	add_column :users, :mails_sent, :boolean, default: false
  	add_column :users, :role, :string 
  end
end
