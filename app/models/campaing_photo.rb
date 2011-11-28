class CampaingPhoto < ActiveRecord::Base
  belongs_to :campaing
  has_attached_file :data
end
