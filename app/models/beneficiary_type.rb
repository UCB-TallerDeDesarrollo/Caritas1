# -*- encoding : utf-8 -*-
class BeneficiaryType < ActiveRecord::Base
   #put validates here
  validates_presence_of :name    
  validates_length_of :name, :maximum => 50
  
   #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ? OR LOWER(description) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%"], :order => "name")
    else
      find(:all, :order => "name")
    end
  end
    #put object methods here
  def to_s
    "#{name}"
  end
end
