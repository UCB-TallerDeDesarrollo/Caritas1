class Beneficiary < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :personal_traits
  validates_presence_of :help_type
  belongs_to :help_type

  def self.get_all_beneficiaries
    find(:all)
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ? OR LOWER(ci) LIKE ? OR LOWER(last_name) LIKE ?',"%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%"])
    else
      find(:all)
    end
  end
end
