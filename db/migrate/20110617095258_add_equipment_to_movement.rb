class AddEquipmentToMovement < ActiveRecord::Migration
  def self.up
    remove_column :movements, :vehicle_id
    remove_column :movements, :trailer_id
    add_column :movements, :head_equipment_id, :integer
    add_column :movements, :trailer_equipment_id, :integer   
  end

  def self.down
  end
end
