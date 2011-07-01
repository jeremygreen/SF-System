class Task < ActiveRecord::Base
  has_many :staffs, :dependent => :restrict
  
  validates_presence_of :task 
  validates_length_of :task, :in => 3..255
  validates_uniqueness_of :task
  
end
