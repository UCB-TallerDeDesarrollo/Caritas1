# -*- encoding : utf-8 -*-
class DeleteFileColumnFromSocialCard < ActiveRecord::Migration
  def self.up
		remove_column :social_cards, :social_card_photo
  end

  def self.down
 		add_column :social_cards, :social_card_photo, :string
  end
end
