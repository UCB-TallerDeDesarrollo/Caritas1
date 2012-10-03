# -*- encoding : utf-8 -*-
class AddTelephoneStringToParishes < ActiveRecord::Migration
  def self.up
    add_column :parishes, :telephone, :string
  end

  def self.down
    remove_column :parishes, :telephone  
  end
end
