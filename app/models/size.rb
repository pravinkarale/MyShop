class Size < ActiveRecord::Base
  attr_accessible :size
  validates :size,:presence=>true
end
