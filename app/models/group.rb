# -*- encoding : utf-8 -*-
class Group < ActiveRecord::Base

  #put constants here

  #put relations and references here
  belongs_to :volunteer # relacion para group_leader
  has_many :volunteers
  has_one :parish
  
  #put active record callbacks here
  has_attached_file :group_photo,
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :storage => :dropbox,
                    :dropbox_settings => "#{Rails.root}/config/dropbox.yml", 
                    :dropbox_options => {
                        :path => proc { |style| "Group/#{style}/#{id}_#{group_photo.original_filename}"},
                        :unique_filename => true
                    }

  #put validates here
  validates_presence_of :name  
  validates_presence_of :parish_id
  
  validates_length_of :name, :maximum => 50

  validates_attachment_size :group_photo, :less_than => 3.megabytes
  validates_attachment_content_type :group_photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ?', "%#{search.downcase}%"], :order => "name")
    else
      find(:all, :order => "name")
    end
  end

  #put object methods here
  def to_s
    "#{name}"
  end
  
  def before_update
    if volunteer.nil?
      self.volunteer_id = '0'
    else
      volunteer.update_attributes(:position => 'responsable', :group_id => self.id)
    end
  end
end
