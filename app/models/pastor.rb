# -*- encoding : utf-8 -*-
class Pastor < ActiveRecord::Base
  
  belongs_to :vicariou
  has_one :parish
  
  validates_presence_of :name
  validates_presence_of :primary_last_name
  validates_presence_of :date_of_birth
  
  validates_length_of :name, :maximum => 50 
  validates_length_of :primary_last_name, :maximum => 50
  validates_length_of :second_last_name, :maximum => 50, :allow_nil => true, :allow_blank => true
  validates_length_of :phone_number, :maximum => 50, :allow_nil => true, :allow_blank => true
  validates_length_of :cellphone_number, :maximum => 50, :allow_nil => true, :allow_blank => true
  #deco prueba
    #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ? OR LOWER(primary_last_name) LIKE ? OR LOWER(second_last_name) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%"], :order => "name")
    else
      find(:all, :order => "name")
    end
  end

  
 def self.order(order)
    if order == "name"
      find(:all, :order => "name ASC")
    elsif order =="Apellido Paterno"
    	    find(:all, :order => "primary_last_name ASC")
     elsif order =="Apellido Materno"
     	   find(:all, :order => "second_last_name ASC")
   else
	find(:all)
      end
  end
  
  #put object methods here
  def close()
    if params(:must_close)
      render :template => "close", :layout => false
    else
      return_to_main
    end
  end
 
  def to_s
    "#{name} #{primary_last_name} #{second_last_name}"
  end
  
  
  
end
