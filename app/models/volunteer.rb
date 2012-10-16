# -*- encoding : utf-8 -*-
class Volunteer < ActiveRecord::Base
  #put constants here

  #put relations and references here
  has_one :group #relacion para group_leader
  belongs_to :group
  belongs_to :assistance_list
  
  #put active record callbacks here
  has_attached_file :volunteer_photo,
                    :dropbox_options => {
                        :path => proc { |style| ":class/#{style}/#{id}_#{volunteer_photo.original_filename}"},
                        :unique_filename => true
                    }
  #put validates here
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :position  
  validates_presence_of :date_of_birth
  validates_presence_of :genre  
  
  validates_length_of :name, :within => 0..50
  validates_length_of :last_name, :within => 0..50
  validates_length_of :second_last_name, :within => 0..50
  validates_length_of :profession, :within => 0..50, :allow_blank => true 
  validates_length_of :phone_number, :within => 0..50, :allow_blank => true  
  validates_length_of :movil, :within => 0..50, :allow_blank => true  
  validates_length_of :position, :within => 0..50
  validates_length_of :email, :within => 0..150, :allow_blank => true 
  
  validates_attachment_size :volunteer_photo, :less_than => 3.megabytes
  validates_attachment_content_type :volunteer_photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  #put class methods here
  def self.search(search,group)
    if search       
          find(:all, :conditions => ['LOWER(name) LIKE ? OR LOWER(last_name) LIKE ? OR LOWER(second_last_name) LIKE ? OR LOWER(profession) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%"], :order => "name")           
    else     
      if group
          find(:all, :conditions => ['group_id = ?', "#{group}"],:order => "name")   
        else 
        find(:all,:order => "name")  
      end
    end
         
  end

  def self.order_by(param,criterion)
    find(:all,:order =>param + " " + criterion)
  end
  #put object methods here
  def to_s
    "#{name} #{last_name} #{second_last_name}"
  end

end
