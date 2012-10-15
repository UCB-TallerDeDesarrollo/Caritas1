class Beneficiary < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :personal_traits
  def self.get_all_beneficiaries
    find(:all)
  end
end
