class CreateEquipment < ActiveRecord::Migration
  def self.up
    create_table :equipment do |t|
      t.string :referencenumber
      t.integer :equipment_type_id
      t.string :make
      t.string :model
      t.string :licencenumber
      t.string :capacity
      t.boolean :availability

      t.timestamps
    end
  end

  def self.down
    drop_table :equipment
  end
end
