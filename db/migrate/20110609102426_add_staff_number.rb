class AddStaffNumber < ActiveRecord::Migration
  def self.up
    add_column :staffs, :staffnumber, :string
  end

  def self.down
  end
end
