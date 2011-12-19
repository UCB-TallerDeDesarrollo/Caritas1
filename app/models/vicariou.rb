class Vicariou < ActiveRecord::Base
  has_one :pastor
  belongs_to :parish
  
  validates_presence_of :name_vicariou
  validates_presence_of :ubication
  validates_presence_of :telephone
  validates_presence_of :pastor_id
  
  validates_length_of :name_vicariou, :maximum => 50
  validates_length_of :ubication, :maximum => 255
  validates_length_of :transport, :maximum => 255
  validates_length_of :telephone, :maximum => 30
  #validates_numericality_of :telephone
  
  validates_format_of :parish_name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :ubication, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :transport, :with => /^([a-zA-Z0-9\ ]{3,50})$/i
  validates_format_of :telephone, :with => /([0-9 ( ) - ])/
  
  validates_uniqueness_of :name_vicariou, :message => "La Vicaria ya Existe"
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name_vicariou LIKE ? OR ubication LIKE ? OR transport LIKE ?', "%#{search}%","%#{search}%","%#{search}%"])
    else
      find(:all)
    end
  end

end
