class CreateTrucksUsersJoinTable < ActiveRecord::Migration
  def change
  	create_table :trucks_users, id: false do |t|
      t.integer :truck_id
      t.integer :user_id
    end
  end
end
