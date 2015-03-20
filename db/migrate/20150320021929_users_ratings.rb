class UsersRatings < ActiveRecord::Migration
  def change
  	create_table :users_ratings, :id => false do |t|
	    t.integer :user_id
	    t.integer :rating_id
    end
  end
end
