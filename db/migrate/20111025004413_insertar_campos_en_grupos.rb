class InsertarCamposEnGrupos < ActiveRecord::Migration
  def self.up  
    execute "insert into groups(id,name,volunteer_id) values(0,'',0);"
    execute "insert into groups(id,name,volunteer_id) values(1,'Corazonsitos',0);"
    execute "insert into groups(id,name,volunteer_id) values(2,'La piedad',0);"
    execute "insert into groups(id,name,volunteer_id) values(3,'La piedra',0);"
    execute "insert into groups(id,name,volunteer_id) values(4,'La razon',0);"
  end

  def self.down    
    execute "truncate table groups"    
  end
end
