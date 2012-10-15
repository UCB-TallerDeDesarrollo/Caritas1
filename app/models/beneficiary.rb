class Beneficiary < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :personal_traits
  has_one :help_type

  def self.get_all_beneficiaries
    find(:all)
  end
end
