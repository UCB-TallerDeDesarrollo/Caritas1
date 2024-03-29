# -*- encoding : utf-8 -*-
class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
      t.string :responsible
      t.date :date_ini
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
