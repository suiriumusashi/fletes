class UsersLoads < ActiveRecord::Migration
  def change
  	create_table :users_loads, :id => false do |t|
	    t.integer :user_id
	    t.integer :load_id
    end
  end
end
