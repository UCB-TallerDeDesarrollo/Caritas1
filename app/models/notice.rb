class Notice < ActiveRecord::Base
  #put constants here
  NOTICES_TYPES = Array.[]("Campañas","Dias Especiales", "Asambleas", "Otro")
  
  
  #put relations and references here
  file_column :notice_photo
  #put active record callbacks here
  
  #put validates here
  validates_presence_of :title
  validates_length_of :title, :maximum => 100
  validates_file_format_of :notice_photo, :in => ["gif", "jpg", "png"]
  #imagen valida de 1 KB to 3 MB
  validates_filesize_of :notice_photo, :in => 1.kilobytes..3000.kilobytes
  #put class methods here

  #put object methods here
end
