class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :size

      
    end
  end
end
