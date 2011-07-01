class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :configuration
      t.string :licencenumber
      t.boolean :availability
      t.string :capacity

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
