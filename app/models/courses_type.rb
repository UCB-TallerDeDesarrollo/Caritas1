class CoursesType < ActiveRecord::Base
  has_attached_file :course_file,
                    :storage => :dropbox,
                    :dropbox_settings => "#{Rails.root}/config/dropbox.yml", 
                    :dropbox_options => {
                        :path => "<table_name>/<record_id>_<attachment_name>_<filename>"
                    }
                    #:path =>'rails_root/public/system/:attachment/:id/:style/:basename.:extension',
                    #:url =>'/:class/:id/:attachment'
  validates_attachment_size :course_file, :in =>1..4000.kilobytes, :message => "no puede ser m'as grande de 10 MB"
  validates_attachment_content_type :course_file, :content_type =>['image/jpeg', 'image/png', 'image/gif']

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
