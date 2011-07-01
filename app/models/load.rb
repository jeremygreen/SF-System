class Load < ActiveRecord::Base
  has_many :movements
  
  validates_presence_of :name
  validates_length_of :name, :in => 3..255
  validates_uniqueness_of :name
 
  validates_presence_of :size
  validates_length_of :size, :in => 3..255
  validates_uniqueness_of :size 

  validates_presence_of :amount
  validates_length_of :amount, :in => 3..255
  validates_numericality_of :amount, :only_integer => true, :message => "Can only be whole number."
  
end
