class Group < ActiveRecord::Base

  #put constants here

  #put relations and references here
  has_one :volunteer, :as => :group_leader
  has_many :volunteers

  #put active record callbacks here

  #put validates here
  validates_presence_of :name

  #put class methods here

  #put object methods here
  def close()
    if params(:must_close)
      render :template => "close", :layout => false
    else
      return_to_main
    end
  end
end
