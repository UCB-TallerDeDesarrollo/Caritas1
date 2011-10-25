class IngresarDatosPastores < ActiveRecord::Migration
def self.up  
    execute "insert into pastors(id,name,primary_last_name,second_last_name,phone_number,cellphone_number) values(0,'Juan','Souza','Divaglio',10,20);"
    execute "insert into pastors(id,name,primary_last_name,second_last_name,phone_number,cellphone_number) values(1,'Pedro','Mustafa','Loktar',120,34);"
    execute "insert into pastors(id,name,primary_last_name,second_last_name,phone_number,cellphone_number) values(2,'Lucas','Dimatelo','Dimitri',103,25);"
    execute "insert into pastors(id,name,primary_last_name,second_last_name,phone_number,cellphone_number) values(3,'Pablo','Chumacero','Bacalao',30,21);"
    execute "insert into pastors(id,name,primary_last_name,second_last_name,phone_number,cellphone_number) values(4,'Bartolomeo','Cuevas','Villa',130,43);"
  end

  def self.down    
    execute "truncate table pastors"   
  end
end
