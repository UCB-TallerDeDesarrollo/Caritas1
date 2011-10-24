class Parish < ActiveRecord::Base
  has_one :pastor
  
  validates_presence_of :pastor_id
  

  
  def self.search(search)
    if search
      find(:all, :conditions => ['parish_name LIKE ? OR ubication LIKE ?', "%#{search}%","%#{search}%"])
    else
      find(:all)
    end
    
  end

  
end
