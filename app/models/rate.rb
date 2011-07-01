class Rate < ActiveRecord::Base
  belongs_to :customer
  belongs_to :movement_type
  belongs_to :load
  
  validates_presence_of :rate
  validates_length_of :rate, :in => 3..255
  validates_numericality_of :rate, :only_integer => true, :message => "Can only be whole number."
end
