class InsertarCamposEnGrupos < ActiveRecord::Migration
  def self.up  
    execute "insert into groups(id,name,volunteer_id) values(0,'',0);"
    execute "insert into groups(name,volunteer_id) values('Corazonsitos',0);"
    execute "insert into groups(name,volunteer_id) values('La piedad',0);"
    execute "insert into groups(name,volunteer_id) values('La piedra',0);"
    execute "insert into groups(name,volunteer_id) values('La razon',0);"
  end

  def self.down    
    execute "truncate table groups"    
  end
end
