class CampaingPhoto < ActiveRecord::Base
  belongs_to :campaing
  has_attached_file :data
  
  validates_attachement_size :data, :less_than => 500.kilobytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
