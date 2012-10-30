class AddRolesToUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :role
    add_column :users, :roles, :integer
    execute "update users set roles = 0 where id = 1;"
  end

  def self.down
    remove_column :users, :roles
  end
end
