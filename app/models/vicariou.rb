class Vicariou < ActiveRecord::Base
  validates_presence_of :name_vicariou
  validates_presence_of :ubication
  validates_presence_of :transport
  validates_presence_of :telephone
  validates_presence_of :vicar_name
  validates_numericality_of :telephone, :greater_than => 0, :if => "self.telephone.present?"
  validates_uniqueness_of :name_vicariou, :message => "La Vicaria ya Existe"
  validates_uniqueness_of :vicar_name, :message => "El Vicario ya esta a cargo de una Vicaria"
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name_vicariou LIKE ? OR vicar_name LIKE ? OR ubication LIKE ? OR transport LIKE ?', "%#{search}%","%#{search}%","%#{search}%","%#{search}%"])
    else
      find(:all)
    end
  end

end
