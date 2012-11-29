class AddRoleInhabilToPastor < ActiveRecord::Migration
  def self.up
    add_column :pastors,:state_inactive, :integer
    execute "update pastors set state_inactive = 1 "
  end

  def self.down
    remove_column :pastors,:state_inactive
  end
end
