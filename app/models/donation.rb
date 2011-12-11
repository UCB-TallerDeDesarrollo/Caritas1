class Donation < ActiveRecord::Base
  #put constants here
  DONATION_UNITS = Array.[]("KG","Litro")

  #put relations and references here
  belongs_to :campaings
  
  #put active record callbacks here
  file_column :volunteer_photo
  #put validates here
  validates_presence_of :name
  validates_presence_of :amount
  validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  #put class methods here
end
