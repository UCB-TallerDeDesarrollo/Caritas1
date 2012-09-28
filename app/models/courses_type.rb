class CoursesType < ActiveRecord::Base
  has_attached_file :course_file
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
