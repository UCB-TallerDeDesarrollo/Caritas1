class Pastor < ActiveRecord::Base
  
  belongs_to :vicariou
  belongs_to :parish
  
  validates_presence_of :name
  validates_presence_of :primary_last_name
  validates_presence_of :second_last_name
  
  validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :primary_last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  validates_format_of :second_last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  
    #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  #put object methods here
  def close()
    if params(:must_close)
      render :template => "close", :layout => false
    else
      return_to_main
    end
  end
  
end
