class Workshop < ActiveRecord::Base

   
  def self.search(search)
    
   if search
      find(:all, :conditions => ['parish LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
