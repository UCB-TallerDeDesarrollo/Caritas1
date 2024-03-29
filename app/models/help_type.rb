class HelpType < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
  
  validates_length_of :name, :maximum => 50  
  validates_length_of :name, :maximum => 500
end
