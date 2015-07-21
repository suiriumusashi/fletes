class CreateRatingsUsersJoinTable < ActiveRecord::Migration
  def change
  	create_table :ratings_users, id: false do |t|
      t.integer :rating_id
      t.integer :user_id
    end
  end
end
