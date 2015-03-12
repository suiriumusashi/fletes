class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :date_sale

      t.timestamps null: false
    end
  end
end
