class AddBeneficiarieHelpTypeId < ActiveRecord::Migration
  
  def self.up

	 add_column :beneficiaries, :help_type_id, :integer
  end


  def self.down
	 remove_column :beneficiaries, :help_type_id
  end

end
