class CreateStaffs < ActiveRecord::Migration
  def self.up
    create_table :staffs do |t|
      t.string :forename
      t.string :surname
      t.integer :task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :staffs
  end
end
