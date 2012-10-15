class HelpType < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
  
  validates_lenght_of :name, :maximum => 50  
end
