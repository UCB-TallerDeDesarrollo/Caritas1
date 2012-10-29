# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  USERS_TYPES=["Administrador", "Parroco"]
  acts_as_authentic
  def self.get_all_users
      find(:all)
  end
  
  def roles_symbols
    [User::USERS_TYPES[role].underscore.to_sym] 
  end
end
