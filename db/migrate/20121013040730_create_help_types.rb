class CreateHelpTypes < ActiveRecord::Migration
  def self.up
    create_table :help_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :help_types
  end
end
