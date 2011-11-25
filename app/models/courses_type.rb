class CoursesType < ActiveRecord::Base
  #has_many :courses
   def self.findf(course)
      find(:all,:conditions => ['id = ?', "#{course}"])
  end
end
