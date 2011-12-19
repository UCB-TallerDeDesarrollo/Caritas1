class Volunteer < ActiveRecord::Base
  #put constants here

  #put relations and references here
  has_one :group #relacion para group_leader
  belongs_to :group
  belongs_to :assistance_list
  
  #put active record callbacks here
  file_column :volunteer_photo
  #put validates here
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :second_last_name
  validates_presence_of :position  
  validates_presence_of :date_of_birth
  validates_presence_of :genre  
  
  validates_length_of :name, :within => 0..50
  validates_length_of :last_name, :within => 0..50
  validates_length_of :second_last_name, :within => 0..50
  validates_length_of :profession, :within => 0..50
  validates_length_of :phone_number, :within => 0..50
  validates_length_of :movil, :within => 0..50
  validates_length_of :position, :within => 0..50
  validates_length_of :email, :within => 0..150
  
  
  validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :last_name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :second_last_name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :profession, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :phone_number, :with => /([0-9 ( ) - ])/
  validates_format_of :movil, :with => /([0-9 ( ) - ])/
  validates_format_of :position, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{0,50})\Z/i, :allow_blank => true 
  
  
  #validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  #validates_format_of :last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  #validates_format_of :second_last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  #validates_format_of :profession, :with => /^([a-zA-Z\ \-]{3,50})$/i,:allow_blank => true  
  #validates_format_of :position, :with => /^([a-zA-Z\ \-]{3,20})$/i
      
  validates_file_format_of :volunteer_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :volunteer_photo, :in => 1.kilobytes..3000.kilobytes
  #put class methods here
  def self.search(search,group)
    if search       
          find(:all, :conditions => ['name LIKE ? OR last_name LIKE ? OR second_last_name LIKE ? OR profession LIKE ?', "%#{search}%","%#{search}%","%#{search}%","%#{search}%"])           
    else     
      if group
          find(:all, :conditions => ['group_id = ?', "#{group}"])   
        else 
        find(:all)  
      end
    end
         
  end
  
  #put object methods here
  def to_s
    "#{name} #{last_name} #{second_last_name}"
  end

end