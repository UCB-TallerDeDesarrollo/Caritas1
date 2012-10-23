class AddTelephoneToBeneficiaries < ActiveRecord::Migration
  def self.up
    add_column :beneficiaries, :telephone, :string
  end

  def self.down
    remove_column :beneficiaries, :telephone
  end
end
