class VicariouRenameColumns < ActiveRecord::Migration
  def self.up
    rename_column :vicarious, :vicarName, :vicar_name
    rename_column :vicarious, :nameVicariou, :name_vicariou
  end
  def self.down
    
  end
end
