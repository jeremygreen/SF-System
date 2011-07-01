class CreateRates < ActiveRecord::Migration
  def self.up
    create_table :rates do |t|
      t.integer :customer_id
      t.integer :load_id
      t.integer :movement_type_id
      t.integer :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :rates
  end
end
