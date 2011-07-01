class AddMovementStatus < ActiveRecord::Migration
  def self.up
    add_column :movements, :status, :string 
  end

  def self.down
  end
end
