class Insert < ActiveRecord::Migration
  def self.up
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Capinota','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Valle Alto','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Valle Bajo','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Centro','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Norte','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Noreste','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Noroeste','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sud Centro','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sur Este','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sur Oeste','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Ayopaya','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sacaba','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Chapare','dato no suministrado','dato no suministrado',00000000,idparroco,true);"
    
  end

  def self.down
        execute "truncate table vicarious"
  end
end
