class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.string :name
      t.string :last_name
      t.string :second_last_name
      t.string :profession
      t.string :phone_number
      t.string :movil
      t.datetime :date_of_birth
      t.bit :gender
      t.string :position

      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end
