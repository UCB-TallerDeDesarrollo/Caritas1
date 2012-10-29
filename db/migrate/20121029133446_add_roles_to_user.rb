class AddRolesToUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :role
    add_column :users, :role, :integer
    execute "update users set role = 0 where id = 1;"
  end

  def self.down
    remove_column :users, :role
  end
end
