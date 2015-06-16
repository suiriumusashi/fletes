class CreatePublicationsUsersJoinTable < ActiveRecord::Migration
  def change
  	create_table :publications_users, id: false do |t|
      t.integer :publication_id
      t.integer :user_id
    end
  end
end
