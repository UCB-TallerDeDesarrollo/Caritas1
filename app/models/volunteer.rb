class Volunteer < ActiveRecord::Base

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ? OR last_name LIKE ? OR second_last_name LIKE ? OR profession LIKE ?', "%#{search}%","%#{search}%","%#{search}%","%#{search}%"])
  else
    find(:all)
  end
end


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
  validates_inclusion_of :movil, :in => 10000000..99999999, :message => "fuera de rango"
  validates_inclusion_of :phone_number, :in => 1000000..9999999, :message => "fuera de rango"
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{0,50})\Z/i
  validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  validates_format_of :second_last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
end
