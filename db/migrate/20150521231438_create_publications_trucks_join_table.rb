class CreatePublicationsTrucksJoinTable < ActiveRecord::Migration
  def change
  	create_table :publications_trucks, id: false do |t|
      t.integer :publication_id
      t.integer :truck_id
    end
 
    add_index :publications_trucks, :publication_id
    add_index :publications_trucks, :truck_id
  end
end
