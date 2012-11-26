class DeleteDateTimeInBeneficiaryHelps < ActiveRecord::Migration
  def self.up
    remove_column :beneficiary_helps, :date
  end

  def self.down
    add_column :beneficiary_helps, :date, :datetime
  end
end
