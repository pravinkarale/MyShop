class Material < ActiveRecord::Base

    attr_accessible :Type, :price, :size, :subtype,:image,:image_file_name,:image_updated_at
	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates :Type, :price, :size, :subtype,:image ,:presence => true

end





