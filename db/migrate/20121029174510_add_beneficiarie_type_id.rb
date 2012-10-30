class AddBeneficiarieTypeId < ActiveRecord::Migration
  def self.up
  	   add_column :beneficiaries, :beneficiary_type_id, :integer
  end

  def self.down
  	  remove_column :beneficiaries, :beneficiary_type_id
  end
end
