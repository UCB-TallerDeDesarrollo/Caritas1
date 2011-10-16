class SocialWork < ActiveRecord::Base
  #put constants here

  #put relations and references here

  #put active record callbacks here

  #put validates here
  validates_presence_of :name
  validates_presence_of :responsible
  validates_presence_of :location  
  validates_numericality_of :phone, :greater_than => 1000000, :less_than => 9999999,:allow_blank => true  , :message => "El Celular no es un numero o es incorrecto"
  validates_numericality_of :movil, :greater_than => 10000000, :less_than => 99999999,:allow_blank => true  ,:message => "El Celular no es un numero o es incorrecto"         
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{0,50})\Z/i, :allow_blank => true  
  validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :location, :with => /^([a-zA-Z\ \-]{3,20})$/i

  #put class methods here
end
