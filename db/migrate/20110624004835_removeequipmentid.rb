class Removeequipmentid < ActiveRecord::Migration
  def self.up
    remove_column :movements, :equipment_id
  end

  def self.down
  end
end
