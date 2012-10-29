class AddBeneficiaryIdToBeneficiaryHelp < ActiveRecord::Migration
  def self.up
    add_column :beneficiary_helps, :beneficiary_id, :integer
  end

  def self.down
    remove_column :beneficiary_helps, :beneficiary_id
  end
end
