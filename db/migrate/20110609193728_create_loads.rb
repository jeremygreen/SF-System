class CreateLoads < ActiveRecord::Migration
  def self.up
    create_table :loads do |t|
      t.string :name
      t.integer :size
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :loads
  end
end
