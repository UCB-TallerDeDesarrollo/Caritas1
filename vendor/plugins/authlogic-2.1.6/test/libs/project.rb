# -*- encoding : utf-8 -*-
class Project < ActiveRecord::Base
  has_and_belongs_to_many :users
end
