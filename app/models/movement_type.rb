class MovementType < ActiveRecord::Base
  has_many :movements
  
  validates_presence_of :movementtype
  validates_length_of :movementtype, :in => 3..255
  validates_uniqueness_of :movementtype
end
