class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
