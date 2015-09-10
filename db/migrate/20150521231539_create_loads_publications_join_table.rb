class CreateLoadsPublicationsJoinTable < ActiveRecord::Migration
  def change
  	create_table :loads_publications, id: false do |t|
      t.integer :publication_id
      t.integer :load_id
    end
 
    add_index :loads_publications, :publication_id
    add_index :loads_publications, :load_id
  end
end
