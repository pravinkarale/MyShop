class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :Type
      t.string :subtype
      t.string :size
      t.integer :price

      t.timestamps
    end
  end
end
