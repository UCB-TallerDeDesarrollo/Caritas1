class InsertarDatosVicarias < ActiveRecord::Migration
  def self.up  
    execute "insert into vicarious(id,name_vicariou,ubication,transport,telephone,pastor_id) values(0,'Vicaria Norte','Zona norte cerca del templo X','Micro P',10,3);"
    execute "insert into vicarious(id,name_vicariou,ubication,transport,telephone,pastor_id) values(1,'Vicaria Sur','Avenida 6 de Julio','Micro C',10,0);"
    execute "insert into vicarious(id,name_vicariou,ubication,transport,telephone,pastor_id) values(2,'Vicaria Este','Final America y Calle Jordan','Micro X',10,2);"
    
  end
  def self.down
    execute "truncate table vicarious"   
  end
end
