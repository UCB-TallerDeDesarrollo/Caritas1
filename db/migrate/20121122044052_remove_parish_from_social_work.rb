class RemoveParishFromSocialWork < ActiveRecord::Migration
  def self.up
    remove_column :social_works, :parish
  end

  def self.down
    add_column :social_works, :parish, :string
  end
end
