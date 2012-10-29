class DeleteBeneficiarieType < ActiveRecord::Migration
  def self.up
  	  remove_column :beneficiaries, :beneficiary_type
  end

  def self.down
  	  add_column :beneficiaries, :beneficiary_type, :integer
  end
end
