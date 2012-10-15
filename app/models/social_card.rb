# -*- encoding : utf-8 -*-
class SocialCard < ActiveRecord::Base
   belongs_to :parish
 

  validates_uniqueness_of :name
  validates_presence_of :name
  validates_length_of :name, :maximum => 150 
  validates_presence_of :address
  validates_length_of :address, :maximum => 150 
  validates_presence_of :gender

  
  validates_numericality_of :identity_card,:allow_blank => true
  validates_length_of :phone, :maximum => 50
  validates_length_of :movil, :maximum => 50
  validates_presence_of :occupation
  validates_length_of :occupation, :maximum => 50
  
  validates_presence_of :family_members
  validates_length_of :family_members, :maximum => 150 
   
  
  validates_presence_of :reference_person
  validates_length_of :reference_person, :maximum => 150 
  validates_presence_of :address_reference
  validates_length_of :address_reference, :maximum => 150 
   
  validates_length_of :phone_reference, :maximum => 50 
  validates_length_of :movil_reference, :maximum => 50 
  validates_presence_of :occupation_reference
  validates_length_of :occupation_reference, :maximum => 50 
  
  
  has_attached_file :social_card_photo,
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :storage => :dropbox,
                    :dropbox_settings => "#{Rails.root}/config/dropbox.yml", 
                    :dropbox_options => {
                        :path => proc { |style| "SocialCard/#{style}/#{id}_#{social_card_photo.original_filename}"},
                        :unique_filename => true
                    }
  
  validates_attachment_content_type :social_card_photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  validates_attachment_size :social_card_photo, :less_than => 3.megabytes
  
  
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
  
  
end
