class CreateWorkshopsCoursesJoin < ActiveRecord::Migration
  def self.up
    create_table 'workshops_courses', id => false do |t|
      t.column 'workshop_id', :integer
      t.colum 'course_id', :integer
    end
  end

  def self.down
    drop_table 'workshops_course'
  end
end
