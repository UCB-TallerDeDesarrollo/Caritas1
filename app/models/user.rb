# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  has_many :notices
  USERS_TYPES=["Administrador", "Parroco", "Voluntario"]
  USERS_STATE=["Inactivo","Activo","Ausente"]
  acts_as_authentic
  def self.get_all_users
      find(:all)
  end
  
  def role_symbols
    [User::USERS_TYPES[roles].underscore.to_sym] 
  end
end
