class SocialWorkPhoto < ActiveRecord::Base
  belongs_to :social_work
  has_attached_file :data
end
