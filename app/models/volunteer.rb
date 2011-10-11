class Volunteer < ActiveRecord::Base
  
  #put validates here
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :second_last_name
  validates_presence_of :phone_number
  validates_presence_of :movil
  validates_presence_of :position
  validates_presence_of :profession
  validates_presence_of :date_of_birth
  validates_presence_of :genre      
  validates_numericality_of :phone_number, :greater_than => 0, :if => "self.phone_number.present?"
  validates_numericality_of :movil, :greater_than => 0, :if => "self.movil.present?"  
  validates_length_of :profession, :within => 0..50
  validates_length_of :position, :within => 0..20
  validates_length_of :name, :within => 0..50
  validates_length_of :last_name, :within => 0..50
  validates_length_of :second_last_name, :within => 0..50
  validates_length_of :movil, :within => 8..8  
  validates_length_of :phone_number, :within => 7..7
end
