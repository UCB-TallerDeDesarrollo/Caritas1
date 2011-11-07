class CreateParishes < ActiveRecord::Migration
  def self.up
    create_table :parishes do |t|
      t.string :name
      t.string :address
      t.text :transportation
      t.string :pastor
      t.integer :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :parishes
  end
end
