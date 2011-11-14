class Course < ActiveRecord::Base
  
  #has_and_belongs_to_many :workshop
  has_many :progress
  has_many :workshops, :through => :progresses
  
  
  validates_presence_of :name
  validates_format_of :name, :with => /^([a-zA-Z0-9\ ]{3,50})$/i
  
  validates_presence_of :description  
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
  def self.find_last_five
    last = find(:all,:order => "created_at")
    last.sort{|a,b| b.created_at <=> a.created_at}.slice(0..4)
  end
  
end
