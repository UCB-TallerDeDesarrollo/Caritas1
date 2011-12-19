class EliminandoLosGruposExistentes < ActiveRecord::Migration
  def self.up
  end

  def self.down
        execute "truncate table groups"   
  end
end
