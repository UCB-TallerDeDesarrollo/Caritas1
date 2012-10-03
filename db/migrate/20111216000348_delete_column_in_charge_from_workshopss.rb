# -*- encoding : utf-8 -*-
class DeleteColumnInChargeFromWorkshopss < ActiveRecord::Migration
 def self.up
     remove_column :workshops, :in_charge
  end

  def self.down
    add_column :workshops, :in_charge, :string
  end
end
