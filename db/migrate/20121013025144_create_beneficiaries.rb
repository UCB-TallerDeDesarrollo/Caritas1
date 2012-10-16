class CreateBeneficiaries < ActiveRecord::Migration
  def self.up
    create_table :beneficiaries do |t|
      t.string :ci
      t.string :name
      t.string :last_name
      t.string :personal_traits
      t.string :address
      t.text :observations	
    end
  end

  def self.down
    drop_table :beneficiaries
  end
end
