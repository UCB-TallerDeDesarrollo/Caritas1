class AddColumnStateUsers < ActiveRecord::Migration
  def self.up
    add_column :users,:state, :integer
  end

  def self.down
    remove_column :users,:state
  end
end
