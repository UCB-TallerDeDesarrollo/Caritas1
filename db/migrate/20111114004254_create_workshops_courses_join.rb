# -*- encoding : utf-8 -*-
class CreateWorkshopsCoursesJoin < ActiveRecord::Migration
  def self.up
    create_table 'workshops_courses' do |t|
      t.column 'workshop_id', :integer
      t.column 'course_id', :integer
    end
  end

  def self.down
    drop_table 'workshops_courses'
  end
end
