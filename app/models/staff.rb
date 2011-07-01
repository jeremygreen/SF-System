class Staff < ActiveRecord::Base
  belongs_to :task
  has_many :movements
  
  validates_presence_of :staffnumber 
  validates_length_of :staffnumber, :in => 2..255
  validates_uniqueness_of :staffnumber

  validates_presence_of :forename 
  validates_length_of :forename, :in => 3..255
  
  validates_presence_of :surname 
  validates_length_of :surname, :in => 3..255
  
  def full_name
    "#{forename} #{surname}"
  end
end
