class Group < ActiveRecord::Base

  #put constants here

  #put relations and references here
  belongs_to :volunteer   # relacion para group_leader
  has_many :volunteers

  #put active record callbacks here

  #put validates here
  validates_presence_of :name, :message => ' no puede estar vacio'    

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  #put object methods here
  def to_s
    "#{name}"
  end
end
