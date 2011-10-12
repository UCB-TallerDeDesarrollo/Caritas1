class Campaing < ActiveRecord::Base
  
 
    
  validates_presence_of :name
  validates_presence_of :location
 
  validates_presence_of :responsible
  validates_presence_of :state
  
  
  validates_length_of :name, :within => 0..100
  validates_length_of :location, :within => 0..80
  validates_format_of :name, :with => /^([a-zA-Z\ \-]{3,100})$/i
  
end
