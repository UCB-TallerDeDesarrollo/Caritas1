class HelpType < ActiveRecord::Base
  validates_precense_of :name
  
  validates_lenght_of :name, :maximum => 50  
end
