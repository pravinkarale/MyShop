class Subtype < ActiveRecord::Base
  attr_accessible :subtype,:type_id
  belongs_to :type
  validates :subtype ,:presence=>true
end
