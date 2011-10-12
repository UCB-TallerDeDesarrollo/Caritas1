class Group < ActiveRecord::Base
  #put validates here
  validates_presence_of :name
end
