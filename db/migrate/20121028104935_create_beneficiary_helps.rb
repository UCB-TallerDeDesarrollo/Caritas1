class CreateBeneficiaryHelps < ActiveRecord::Migration
  def self.up
    create_table :beneficiary_helps do |t|
      t.datetime :date
      t.string :helpType
      t.integer :amount
      t.text :detail

      t.timestamps
    end
  end

  def self.down
    drop_table :beneficiary_helps
  end
end
