class Notice < ActiveRecord::Base
  #put constants here
  NOTICES_TYPES = Array.[]("Campañas","Dias Especiales", "Asambleas")
  
  
  #put relations and references here

  #put active record callbacks here
  #
  #put validates here
  validates_presence_of :title
  validates_length_of :title, :maximum => 100

  #put class methods here

  #put object methods here
end
