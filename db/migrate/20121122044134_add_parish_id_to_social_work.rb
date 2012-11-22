class AddParishIdToSocialWork < ActiveRecord::Migration
  def self.up
    add_column :social_works, :parish_id, :integer
  end

  def self.down
    remove_column :social_works, :parish_id
  end
end
