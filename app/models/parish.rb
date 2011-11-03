class Parish < ActiveRecord::Base
  has_one :pastor
  has_one :vicariou
  
  validates_presence_of :pastor_id
  validates_presence_of :vicariou_id
  
  validates_presence_of :parish_name  
  validates_presence_of :ubication
  validates_presence_of :transport
  validates_presence_of :telephone

  validates_numericality_of :telephone, :greater_than => 0, :if => "self.telephone.present?"
  validates_uniqueness_of :parish_name, :message => "La Parroquia ya existe!"
  
  def self.search(search)
    if search
      find(:all, :conditions => ['parish_name LIKE ? OR ubication LIKE ?', "%#{search}%","%#{search}%"])
    else
      find(:all)
    end
    
  end

  
end
