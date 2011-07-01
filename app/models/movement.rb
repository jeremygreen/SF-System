class Movement < ActiveRecord::Base
    belongs_to :customer
    belongs_to :movement_type
    belongs_to :load
    belongs_to :head, :class_name => 'Equipment', :foreign_key => 'head_equipment_id'
    belongs_to :trailer, :class_name => 'Equipment', :foreign_key => 'trailer_equipment_id'
    belongs_to :driver, :class_name => 'Staff', :foreign_key => 'driver_staff_id'
    belongs_to :helper, :class_name => 'Staff', :foreign_key => 'helper_staff_id'
    
    
end
