# -*- encoding : utf-8 -*-
class Parish < ActiveRecord::Base
  PARISH_STATES = Array.[]("En Contacto","No Alcanzada", "Sensibilizada", "No Acepto", "En Proceso", "Seguimiento")
  
  belongs_to :pastor
  has_one :vicariou
  has_one :group
  has_one :workshop
  has_many :social_cards
  has_many :beneficiaries
  has_many :social_works
  has_attached_file :parish_photo,
                    :url  => "/assets/products/:id/:style/:basename.:extension",                    
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml", 
                    :dropbox_options => {
                        :path => proc { |style| "Parish/#{style}/#{id}_#{parish_photo.original_filename}"},
                        :unique_filename => true
                    }
  
  validates_presence_of :pastor_id
  validates_presence_of :vicariou_id
  validates_presence_of :parish_name  
  validates_presence_of :ubication
  validates_presence_of :telephone
  
  validates_length_of :parish_name, :maximum => 50
  validates_length_of :ubication, :maximum => 255
  validates_length_of :transport, :maximum => 255
  validates_length_of :telephone, :maximum => 50
  validates_length_of :contact_telephone, :maximum => 50, :allow_nil => true, :allow_blank => true
  
  

  #validates_numericality_of :telephone, :greater_than => 0, :if => "self.telephone.present?"
  validates_uniqueness_of :parish_name, :message => "La Parroquia ya existe!"

  validates_attachment_size :parish_photo, :less_than => 3.megabytes
  validates_attachment_content_type :parish_photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(parish_name) LIKE ? OR LOWER(ubication) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%"], :order => "parish_name")
    else
      find(:all, :order => "parish_name")
    end
  end
  
  def to_s
    "#{parish_name}"
    #para entrar
  end
  
  def after_create
    self.workshop = Workshop.new
    self.save
  end
  
  def create_workshop
    self.workshop = Workshop.new
    self.save
  end

end
