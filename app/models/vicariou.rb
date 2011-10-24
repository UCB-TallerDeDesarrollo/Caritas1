class Vicariou < ActiveRecord::Base
  has_one :pastor
  belongs_to :parish
  
  validates_presence_of :name_vicariou
  validates_presence_of :ubication
  validates_presence_of :transport
  validates_presence_of :telephone
  validates_presence_of :pastor_id
  
  validates_numericality_of :telephone, :greater_than => 0, :if => "self.telephone.present?"
  validates_uniqueness_of :name_vicariou, :message => "La Vicaria ya Existe"
  validates_uniqueness_of :pastor_id, :message => "El Pastor ya esta a cargo de una Vicaria"
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name_vicariou LIKE ? OR ubication LIKE ? OR transport LIKE ?', "%#{search}%","%#{search}%","%#{search}%"])
    else
      find(:all)
    end
  end

end
