class AddBeneficiaryType < ActiveRecord::Migration
  def self.up
  	   add_column :beneficiaries, :beneficiary_type, :integer
  end

  def self.down
  	  remove_column :beneficiaries, :beneficiary_type
  end
end
