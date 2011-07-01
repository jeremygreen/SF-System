class Equipment < ActiveRecord::Base
  belongs_to :equipment_type
  has_many :movements
  
  def full_equipment
    "#{referencenumber} #{equipment_type.equipmenttype}"
  end
  
end
