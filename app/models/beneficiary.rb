class Beneficiary < ActiveRecord::Base

  has_many :beneficiary_helps
  #put active record callbacks here
  has_attached_file :beneficiary_photo,
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
                    :dropbox_options => {
                        :path => proc { |style| "Beneficiary/#{style}/#{id}_#{beneficiary_photo.original_filename}"},
                        :unique_filename => true
                    }
  belongs_to :parish
  belongs_to :beneficiary_type
  validates_attachment_size :beneficiary_photo, :less_than => 3.megabytes
  validates_attachment_content_type :beneficiary_photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  validates_numericality_of :ci,:allow_blank => true
  validates_numericality_of :telephone, :allow_blank => true
  validates_presence_of :name
  validates_length_of :name,:within => 3..25
  validates_presence_of :last_name
  validates_length_of :last_name, :within => 3..25
  validates_presence_of :parish_id
  validates_presence_of :beneficiary_type_id

  belongs_to :help_type
  def self.get_all_beneficiaries
    find(:all)
  end

  def self.order(order)
    if order == "name"
      find(:all, :order => "name ASC")
    end
  end

  def self.search(name, last, ci, telephone, ben_type, hel_type)

    if ben_type && hel_type
      if !name.blank?
        if !last.blank?
          find(:all, :conditions => ['LOWER(name) LIKE ? AND LOWER(last_name) LIKE ? AND beneficiary_type_id = ? AND help_type_id = ?',"%#{name.downcase}%", "%#{last.downcase}%",ben_type,hel_type])
        else
          find(:all, :conditions => ['LOWER(name) LIKE ? AND beneficiary_type_id = ? AND help_type_id = ?',"%#{name.downcase}%",ben_type,hel_type])
        end
      else
        if !last.blank?
          find(:all, :conditions => ['LOWER(last_name) LIKE ? AND beneficiary_type_id = ? AND help_type_id = ?',"%#{last.downcase}%",ben_type,hel_type])
        else
          if !ci.blank?
            find(:all, :conditions => ['LOWER(ci) LIKE ? AND beneficiary_type_id = ? AND help_type_id = ?',"%#{ci.downcase}%",ben_type,hel_type])
          else
            if !telephone.blank?
              find(:all, :conditions => ['LOWER(telephone) LIKE ? AND beneficiary_type_id = ? AND help_type_id = ?',"%#{telephone.downcase}%",ben_type,hel_type])
            else
              find(:all, :conditions => ['beneficiary_type_id = ? AND help_type_id = ?',ben_type,hel_type])
            end
          end
        end
      end
    elsif ben_type
      if !name.blank?
        if !last.blank?
          find(:all, :conditions => ['LOWER(name) LIKE ? AND LOWER(last_name) LIKE ? AND "beneficiary_type_id" = ? ',"%#{name.downcase}%", "%#{last.downcase}%",ben_type])
        else
          find(:all, :conditions => ['LOWER(name) LIKE ? AND beneficiary_type_id = ? ',"%#{name.downcase}%",ben_type])
        end
      else
        if !last.blank?
          find(:all, :conditions => ['LOWER(last_name) LIKE ? AND beneficiary_type_id = ? ',"%#{last.downcase}%",ben_type])
        else
          if !ci.blank?
            find(:all, :conditions => ['LOWER(ci) LIKE ? AND beneficiary_type_id = ? ',"%#{ci.downcase}%",ben_type])
          else
            if !telephone.blank?
              find(:all, :conditions => ['LOWER(telephone) LIKE ? AND beneficiary_type_id = ? ',"%#{telephone.downcase}%",ben_type,])
            else
              find(:all,:conditions => ['beneficiary_type_id = ?',ben_type])
            end
          end
        end
      end
    elsif hel_type
      if !name.blank?
        if !last.blank?
          find(:all, :conditions => ['LOWER(name) LIKE ? AND LOWER(last_name) LIKE ? AND help_type_id = ?',"%#{name.downcase}%", "%#{last.downcase}%",hel_type])
        else
          find(:all, :conditions => ['LOWER(name) LIKE ? AND help_type_id = ?',"%#{name.downcase}%",hel_type])
        end
      else
        if !last.blank?
          find(:all, :conditions => ['LOWER(last_name) LIKE ? AND help_type_id = ?',"%#{last.downcase}%",hel_type])
        else
          if !ci.blank?
            find(:all, :conditions => ['LOWER(ci) LIKE ? AND help_type_id = ?',"%#{ci.downcase}%",hel_type])
          else
            if !telephone.blank?
              find(:all, :conditions => ['LOWER(telephone) LIKE ? AND help_type_id = ?',"%#{telephone.downcase}%",hel_type])
            else
              find(:all,:conditions => ['help_type_id = ?',hel_type])
            end
          end
        end
      end
    else
      if !name.blank?
        if !last.blank?
          find(:all, :conditions => ['LOWER(name) LIKE ? AND LOWER(last_name) LIKE ?',"%#{name.downcase}%", "%#{last.downcase}%"])
        else
          find(:all, :conditions => ['LOWER(name) LIKE ?',"%#{name.downcase}%"])
        end
      else
        if !last.blank?
          find(:all, :conditions => ['LOWER(last_name) LIKE ?',"%#{last.downcase}%"])
        else
          if !ci.blank?
            find(:all, :conditions => ['LOWER(ci) LIKE ?',"%#{ci.downcase}%"])
          else
            if !telephone.blank?
              find(:all, :conditions => ['LOWER(telephone) LIKE ?',"%#{telephone.downcase}%"])
            else
              find(:all)
            end
          end
        end
      end
    end
  end
end
