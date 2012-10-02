class AddAttachmentsSocialCardPhotoToSocialCards < ActiveRecord::Migration
  def self.up

    add_column :social_cards, :social_card_photo_file_name, :string
    add_column :social_cards, :social_card_photo_content_type, :string
    add_column :social_cards, :social_card_photo_file_size, :integer
    add_column :social_cards, :social_card_photo_updated_at, :datetime

  end

  def self.down

    remove_column :social_cards, :social_card_photo_file_name
    remove_column :social_cards, :social_card_photo_content_type
    remove_column :social_cards, :social_card_photo_file_size
    remove_column :social_cards, :social_card_photo_updated_at

  end
end
