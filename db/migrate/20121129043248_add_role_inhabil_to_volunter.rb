class AddRoleInhabilToVolunter < ActiveRecord::Migration
  def self.up
    add_column :volunteers,:state_inactive, :integer
    execute "update volunteers set state_inactive = 1 "
  end

  def self.down
    remove_column :volunteers,:state_inactive
  end
end
