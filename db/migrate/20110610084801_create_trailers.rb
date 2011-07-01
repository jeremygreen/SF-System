class CreateTrailers < ActiveRecord::Migration
  def self.up
    create_table :trailers do |t|
      t.string :referencenumber
      t.boolean :availability
      t.string :capacity

      t.timestamps
    end
  end

  def self.down
    drop_table :trailers
  end
end
