class Customer < ActiveRecord::Base
    validates_presence_of :name
    validates_length_of :name, :in => 3..255
    validates_uniqueness_of :name
    
    validates_presence_of :address1
    validates_length_of :address1, :in => 2..255
    
    validates_presence_of :phone   
    validates_length_of :phone, :in => 10..255
    
    validates_presence_of :email  
    validates_length_of :email, :in => 5..255
    validates_uniqueness_of :email 
    validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i 
end
