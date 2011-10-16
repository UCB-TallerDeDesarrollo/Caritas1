class CreateSocialWorks < ActiveRecord::Migration
  def self.up
    create_table :social_works do |t|
      t.string :name
      t.string :responsible
      t.string :location
      t.integer :phone
      t.integer :movil
      t.string :email
      t.string :transport
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :social_works
  end
end
