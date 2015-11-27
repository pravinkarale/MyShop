class Dailytransaction < ActiveRecord::Base
  attr_accessible :Type, :image, :price, :size, :sold_price, :subtype, :transact_date,:avatar
  #mount_uploader :avatar, AvatarUploader
  validates :price,:presence=>true
end
