# -*- encoding : utf-8 -*-
class BeneficiaryHelp < ActiveRecord::Base
  belongs_to :beneficiary
  
  validates_presence_of :date
  #validates_numericality_of :amount   
  

end