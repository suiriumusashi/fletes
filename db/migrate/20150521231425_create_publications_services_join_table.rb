class CreatePublicationsServicesJoinTable < ActiveRecord::Migration
  def change
  	create_table :publications_services, id: false do |t|
      t.integer :publication_id
      t.integer :service_id
    end
 
    add_index :publications_services, :publication_id
    add_index :publications_services, :service_id
  end
end
