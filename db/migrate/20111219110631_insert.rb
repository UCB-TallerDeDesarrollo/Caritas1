class Insert < ActiveRecord::Migration
  def self.up
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Capinota','dato no suministrado','dato no suministrado',00000000,121,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Valle Alto','dato no suministrado','dato no suministrado',00000000,132,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Centro','dato no suministrado','dato no suministrado',00000000,81,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Norte','dato no suministrado','dato no suministrado',00000000,88,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Noreste','dato no suministrado','dato no suministrado',00000000,94,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Noroeste','dato no suministrado','dato no suministrado',00000000,95,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sud Centro','dato no suministrado','dato no suministrado',00000000,100,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sur Este','dato no suministrado','dato no suministrado',00000000,106,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sur Oeste','dato no suministrado','dato no suministrado',00000000,111,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Ayopaya','dato no suministrado','dato no suministrado',00000000,115,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Chapare','dato no suministrado','dato no suministrado',00000000,145,true);"
    
  end

  def self.down
        execute "truncate table vicarious"
  end
end
