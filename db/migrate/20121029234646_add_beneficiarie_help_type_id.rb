class AddBeneficiarieHelpTypeId < ActiveRecord::Migration
  
  def self.up

	add_column :beneficiaries, :help_type_id, :integer
  end


  def self.down

  end

end