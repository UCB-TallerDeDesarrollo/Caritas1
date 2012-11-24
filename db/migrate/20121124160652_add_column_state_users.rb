class AddColumnStateUsers < ActiveRecord::Migration
  def self.up
    add_column :users,:state, :integer
    execute "update users set state = 1 "
  end

  def self.down
    remove_column :users,:state
  end
end
