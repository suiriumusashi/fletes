class AddUserIdToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :user_id, :integer
    add_index :competitors, :user_id
    add_column :competitors, :publication_id, :integer
    add_index :competitors, :publication_id
  end
end
