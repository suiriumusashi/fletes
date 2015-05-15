class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :day_pickup
      t.string :time_pickup
      t.string :day_delivery
      t.string :time_delivery
      t.string :origin
      t.string :destiny
      t.text :description
      t.string :estimated_price
      t.string :final_price
      t.string :status

      t.timestamps null: false
    end
  end
end
