class UpdateUsers < ActiveRecord::Migration
  def self.up
    execute "update users set role='Administrador' where id=1"
  end

  def self.down
  end
end
