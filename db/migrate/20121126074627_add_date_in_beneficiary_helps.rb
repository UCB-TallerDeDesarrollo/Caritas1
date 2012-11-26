class AddDateInBeneficiaryHelps < ActiveRecord::Migration
  def self.up
    add_column :beneficiary_helps, :date, :date
  end

  def self.down
    remove_column :beneficiary_helps, :date
  end
end
