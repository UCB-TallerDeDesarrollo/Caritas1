# -*- encoding : utf-8 -*-
class BeneficiaryHelp < ActiveRecord::Base
  belongs_to :beneficiary
  
  validates_presence_of :date
  #validates_numericality_of :amount   
  
#put class methods here
  def self.search(date_start, date_end)
    if date_start && date_end
      find(:all, :conditions => [ " date between ? and ? ", date_start,date_end ], :order => "date")
    else
      find(:all, :order => "date")
    end
  end
end