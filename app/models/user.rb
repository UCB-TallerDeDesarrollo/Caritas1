# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  USERS_TYPES=Array.[]("Administrador","Parroco")
  acts_as_authentic
  def self.get_all_users
      find(:all)
  end
end
