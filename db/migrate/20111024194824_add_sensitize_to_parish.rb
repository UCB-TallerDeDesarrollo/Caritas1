class AddSensitizeToParish < ActiveRecord::Migration
  def self.up
    add_column :parishes, :sensitize, :boolean
  end

  def self.down
    remove_column :parishes, :sensitize
  end
end
