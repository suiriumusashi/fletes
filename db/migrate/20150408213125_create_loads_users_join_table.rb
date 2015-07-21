class CreateLoadsUsersJoinTable < ActiveRecord::Migration
  def change
  	create_table :loads_users, id: false do |t|
      t.integer :load_id
      t.integer :user_id
    end
  end
end
