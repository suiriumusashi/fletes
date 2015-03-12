class CreateInboxes < ActiveRecord::Migration
  def change
    create_table :inboxes do |t|
      t.string :subject
      t.string :message

      t.timestamps null: false
    end
  end
end
