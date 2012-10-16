class Beneficiary < ActiveRecord::Base
    #put active record callbacks here
  has_attached_file :beneficiary_photo,
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml", 
                    :dropbox_options => {
                        :path => proc { |style| "Beneficiary/#{style}/#{id}_#{beneficiary_photo.original_filename}"},
                        :unique_filename => true
                    }
  validates_attachment_size :beneficiary_photo, :less_than => 3.megabytes
  validates_attachment_content_type :beneficiary_photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  validates_numericality_of :ci
  validates_presence_of :name
  validates_length_of :name,:within => 3..25
  validates_presence_of :last_name
  validates_length_of :last_name, :within => 3..25
  validates_presence_of :personal_traits

  def self.get_all_beneficiaries
    find(:all)
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ? OR LOWER(ci) LIKE ? OR LOWER(last_name) LIKE ? OR LOWER(personal_traits) LIKE ?',"%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%"])
    else
      find(:all)
    end
  end
end
