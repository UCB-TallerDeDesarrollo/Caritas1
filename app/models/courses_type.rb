# -*- encoding : utf-8 -*-
class CoursesType < ActiveRecord::Base
  has_attached_file :course_file,
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml", 
                    :dropbox_options => {
                        :path => proc { |style| "CoursesType/#{id}_#{course_file.original_filename}"},
                        :unique_filename => true
                    }
                    #:path =>'rails_root/public/system/:attachment/:id/:style/:basename.:extension',
                    #:url =>'/:class/:id/:attachment'
    
  validates_presence_of :name
  validates_presence_of :description 
  
  validates_length_of :name, :within => 0..150

  #has_many :courses
  def self.findf(course)
      find(:all,:conditions => ['id = ?', "#{course}"])
  end
  
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
   
end
