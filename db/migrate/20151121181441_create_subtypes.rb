class CreateSubtypes < ActiveRecord::Migration
  def change
    create_table :subtypes do |t|
      t.string :subtype
      t.belongs_to :type
      t.timestamps
    end
  end
end
