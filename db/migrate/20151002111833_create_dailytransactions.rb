class CreateDailytransactions < ActiveRecord::Migration
  def change
    create_table :dailytransactions do |t|
      t.string :Type
      t.string :subtype
      t.string :size
      t.string :image_name
      t.integer :price
      t.integer :sold_price
      t.date :transact_date

      t.timestamps
    end
  end
end
