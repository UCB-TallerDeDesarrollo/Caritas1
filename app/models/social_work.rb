class SocialWork < ActiveRecord::Base
  #put constants here

  #put relations and references here

  #put active record callbacks here

  #put validates here
  validates_presence_of :parish
  validates_presence_of :social_work_name
  validates_presence_of :social_work
  validates_presence_of :responsible
  validates_presence_of :location  
  validates_presence_of :responsible_filling
  #validates_numericality_of :phone, :greater_than => 1000000, :less_than => 9999999,:allow_blank => true  , :message => "El Celular no es un numero o es incorrecto"
  #validates_numericality_of :movil, :greater_than => 10000000, :less_than => 99999999,:allow_blank => true  ,:message => "El Celular no es un numero o es incorrecto"         
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{0,50})\Z/i, :allow_blank => true  
#  validates_format_of :social_work_name, :with => /^([a-zA-Z\ ]{3,50})$/i
#  validates_format_of :responsible, :with => /^([a-zA-Z\ ]{3,50})$/i
#  validates_format_of :responsible_filling, :with => /^([a-zA-Z\ ]{3,50})$/i
#  validates_format_of :location, :with => /^([a-zA-Z\ \-]{3,20})$/i
#  validates_format_of :parish, :with => /^([a-zA-Z\ ]{3,50})$/i
#  validates_format_of :social_work, :with => /^([a-zA-Z\ ]{3,50})$/i

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['social_work_name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
