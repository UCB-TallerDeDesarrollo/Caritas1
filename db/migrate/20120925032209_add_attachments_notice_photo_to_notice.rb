# -*- encoding : utf-8 -*-
class AddAttachmentsNoticePhotoToNotice < ActiveRecord::Migration
  def self.up
    add_column :notices, :notice_photo_file_name, :string
    add_column :notices, :notice_photo_content_type, :string
    add_column :notices, :notice_photo_file_size, :integer
    add_column :notices, :notice_photo_updated_at, :datetime
  end

  def self.down
    remove_column :notices, :notice_photo_file_name
    remove_column :notices, :notice_photo_content_type
    remove_column :notices, :notice_photo_file_size
    remove_column :notices, :notice_photo_updated_at
  end
end
