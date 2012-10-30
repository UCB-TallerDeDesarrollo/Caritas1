class AddColumnUserTypeController < ActiveRecord::Migration
  def self.up
    add_column :users,:controller_type,:integer
  end

  def self.down
    remove_column :users,:controller_type
  end
end
