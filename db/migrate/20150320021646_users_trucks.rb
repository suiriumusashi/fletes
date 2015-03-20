class UsersTrucks < ActiveRecord::Migration
  def change
  	create_table :users_trucks, :id => false do |t|
	    t.integer :user_id
	    t.integer :truck_id
     end
  end
end
