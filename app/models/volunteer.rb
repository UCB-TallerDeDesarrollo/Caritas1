class Volunteer < ActiveRecord::Base
  #put constants here

  #put relations and references here
  has_one :group #relacion para group_leader
  #belongs_to :group

  #put active record callbacks here

  #put validates here
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :second_last_name
  validates_presence_of :position  
  validates_presence_of :date_of_birth
  validates_presence_of :genre
  validates_uniqueness_of :name, :scope => [:last_name, :second_last_name]
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{0,50})\Z/i, :allow_blank => true  
  validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  validates_format_of :second_last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  validates_format_of :profession, :with => /^([a-zA-Z\ \-]{3,50})$/i,:allow_blank => true  
  validates_format_of :position, :with => /^([a-zA-Z\ \-]{3,20})$/i

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ? OR last_name LIKE ? OR second_last_name LIKE ? OR profession LIKE ?', "%#{search}%","%#{search}%","%#{search}%","%#{search}%"])
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

  def to_s
    "#{name} #{last_name} #{second_last_name}"
  end

end