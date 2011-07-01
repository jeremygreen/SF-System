class AddReferenceNumberToVehicle < ActiveRecord::Migration
  def self.up
    add_column :vehicles, :referencenumber, :string
  end

  def self.down
  end
end
