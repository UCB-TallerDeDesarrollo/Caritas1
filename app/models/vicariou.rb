class Vicariou < ActiveRecord::Base
  validates_presence_of :nameVicariou
  validates_presence_of :ubication
  validates_presence_of :transport
  validates_presence_of :telephone
  validates_presence_of :vicarName
  validates_numericality_of :telephone, :greater_than => 0, :if => "self.telephone.present?"
  validates_uniqueness_of :nameVicariou, :message => "La Vicaria ya Existe"
  validates_uniqueness_of :vicarName, :message => "El Vicario ya esta a cargo de una Vicaria"
end
