# -*- encoding : utf-8 -*-
class DeleteGroupPhotoFileColumnFromGroups < ActiveRecord::Migration
  def self.up
    remove_column :groups, :group_photo
  end

  def self.down
    add_column :groups, :group_photo, :string
  end
end
