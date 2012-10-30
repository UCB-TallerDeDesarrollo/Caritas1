# -*- encoding : utf-8 -*-
class BeneficiaryHelp < ActiveRecord::Base
  belongs_to :beneficiary
  
  validates_presence_of :date
  #validates_numericality_of :amount   
  
#put class methods here
  def self.search(date_start, date_end, help_type, parish_id)
    
    if help_type && date_start && date_end && parish_id
      find(:all, :conditions => [ ' date between ? and ? and "helpType" = ? and beneficiaries.parish_id = ?', date_start,date_end,help_type,parish_id ], :include => :beneficiary, :order => "date")
    elsif date_start && date_end && help_type
      find(:all, :conditions => [ ' date between ? and ? and "helpType" = ?', date_start,date_end,help_type], :order => "date")
    elsif date_start && date_end && parish_id
      find(:all, :conditions => [ ' date between ? and ? and beneficiaries.parish_id = ?', date_start,date_end,parish_id ], :include => :beneficiary, :order => "date")
    elsif date_start && date_end
      find(:all, :conditions => [ ' date between ? and ? ', date_start,date_end], :order => "date")
    else
      find(:all, :order => "date")
    end
  end
  
  def self.searchmore(date_start, date_end, parish_help)
    if date_start && date_end
  #    find(:all, :joins, "" :conditions => [ " date between ? and ? AND parish_id = ?", date_start,date_end,parish_help ], :order => "date")
    else
      find(:all, :order => "date")
    end
  end
  
end