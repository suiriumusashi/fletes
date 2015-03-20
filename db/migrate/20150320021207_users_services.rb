class UsersServices < ActiveRecord::Migration
  def change
  	  create_table :users_services, :id => false do |t|
	      t.integer :user_id
	      t.integer :service_id
      end
  end
end
