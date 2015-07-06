class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :conform
      t.string :price
      t.references :users, index: true
      t.references :publications, index: true

      t.timestamps null: false
    end
    add_foreign_key :competitors, :users
    add_foreign_key :competitors, :publications
  end
end
