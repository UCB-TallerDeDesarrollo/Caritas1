class Parish < ActiveRecord::Base
  has_one :pastor
  
  validates_presence_of :pastor_id
end
