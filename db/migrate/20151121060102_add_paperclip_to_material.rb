class AddPaperclipToMaterial < ActiveRecord::Migration
  def change
  	add_attachment :materials, :image 
  end
end
