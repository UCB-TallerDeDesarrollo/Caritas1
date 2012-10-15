class CreateBeneficiaryTypes < ActiveRecord::Migration
  def self.up
    create_table :beneficiary_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :beneficiary_types
  end
end
