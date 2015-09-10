class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :conform
      t.string :price
      t.timestamps null: false
    end
  end
end
