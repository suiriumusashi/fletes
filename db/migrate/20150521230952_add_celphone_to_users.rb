class AddCelphoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :celphone, :string
    add_column :users, :phone_extra, :string
    add_column :users, :phone_extra_two, :string
    add_column :users, :city_origin, :string
    add_column :users, :state_origin, :string
    add_column :users, :state_more, :text
    add_column :users, :update_profile, :string, :default => 0
  end
end
