class CreateMovements < ActiveRecord::Migration
  def self.up
    create_table :movements do |t|
      t.string :waybill_number
      t.integer :customer_id
      t.integer :movement_type_id
      t.integer :load_id
      t.date :movement_date
      t.time :movment_time
      t.integer :vehicle_id
      t.integer :trailer_id
      t.integer :driver_staff_id
      t.integer :helper_staff_id
      t.string :seal_number
      t.text :remarks
      t.integer :rate
      t.integer :override_rate

      t.timestamps
    end
  end

  def self.down
    drop_table :movements
  end
end
