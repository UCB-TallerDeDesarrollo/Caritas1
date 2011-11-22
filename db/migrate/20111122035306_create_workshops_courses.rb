class CreateWorkshopsCourses < ActiveRecord::Migration
  def self.up
    create_table :workshops_courses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :workshops_courses
  end
end
