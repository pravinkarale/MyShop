class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :Type
    end
  end
end
