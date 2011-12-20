class InsertarGruposEnlazadasConParroquias < ActiveRecord::Migration

  def self.up
#vicaria centro
    execute "insert into groups(name,parish_id,state) values('Madre de la Divina Provinencia (Hospicio)',1,true);"
    execute "insert into groups(name,parish_id,state) values('Santo Domingo',2,true);"
    execute "insert into groups(name,parish_id,state) values('San Ignacio de Loyola (Compañia de Jesus)',3,true);"
    execute "insert into groups(name,parish_id,state) values('San Jose (San Juan de Dios)',4,true);"
    execute "insert into groups(name,parish_id,state) values('San Pedro',5,true);"
    execute "insert into groups(name,parish_id,state) values('Virgen del Carmen',6,true);"
    #vicaria Norte
    execute "insert into groups(name,parish_id,state) values('Madre del Verbo Divino',7,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora de Guadalupe',8,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora de Anunciacion',9,true);"
    execute "insert into groups(name,parish_id,state) values('Santa Monica',10,true);"
    #vicaria Nor Este
    execute "insert into groups(name,parish_id,state) values('Virgen del Carmen y San Maximiliano Kolbe (Quintanilla)',11,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestro Señor de Exaltacion (Recoleta)',12,true);"
    execute "insert into groups(name,parish_id,state) values('Santa Ana (Cala Cala)',13,true);"
    execute "insert into groups(name,parish_id,state) values('Divino Maestro',14,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora de las Gracias y Beato Edmundo Boyanowski',15,true);"
    #vicaria Nor Oeste
    execute "insert into groups(name,parish_id,state) values('Cristo Rey',16,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora de La Merced',17,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora de La Paz',18,true);"
    execute "insert into groups(name,parish_id,state) values('Parroquia San Gerardo',19,true);"
    execute "insert into groups(name,parish_id,state) values('Inmaculado Corazon de Maria (Corazonistas)',20,true);"
    #vicaria Sur Centro
    execute "insert into groups(name,parish_id,state) values('San Antonio de Padua',21,true);"
    execute "insert into groups(name,parish_id,state) values('San Carlos Borromeo',22,true);"
    execute "insert into groups(name,parish_id,state) values('San Joaquin',23,true);"
    execute "insert into groups(name,parish_id,state) values('San Juan Bautista (Alalay)',24,true);"
    execute "insert into groups(name,parish_id,state) values('San Rafael',25,true);"
    execute "insert into groups(name,parish_id,state) values('San Pio X',26,true);"
    #vicaria Sur Este
    execute "insert into groups(name,parish_id,state) values('Virgen de Fatima',27,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora de La Salette',28,true);"
    execute "insert into groups(name,parish_id,state) values('San Eugenio de Mazenod',29,true);"
    execute "insert into groups(name,parish_id,state) values('Santa Vera Cruz',30,true);"
    execute "insert into groups(name,parish_id,state) values('Maria del Camino',31,true);"
    #vicaria Sur Oeste
    execute "insert into groups(name,parish_id,state) values('Maria Auxiliadora',32,true);"
    execute "insert into groups(name,parish_id,state) values('Cuasi Parroquia Virgen del Socavon',33,true);"
    execute "insert into groups(name,parish_id,state) values('Cuasi Parroquia Don Bosco',34,true);"
    #vicaria Ayopaya
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora del Rosario (Cocapata)',35,true);"
    execute "insert into groups(name,parish_id,state) values('San Francisco de Asis (Independencia)',36,true);"
    execute "insert into groups(name,parish_id,state) values('San Jose Obrero (Kami)',37,true);"
    execute "insert into groups(name,parish_id,state) values('San Bartolome (Morochata)',38,true);"
    #vicaria Capinota
    execute "insert into groups(name,parish_id,state) values('San Augustin (Tapacari)',39,true);"
    execute "insert into groups(name,parish_id,state) values('San Antonio de Padua (Arque)',40,true);"
    execute "insert into groups(name,parish_id,state) values('San Juan Bautista (Tacopaya)',41,true);"
    execute "insert into groups(name,parish_id,state) values('San Pablo Apostol (Capinota)',42,true);"
    execute "insert into groups(name,parish_id,state) values('San Juan Bautista (Itapaya)',43,true);"
    execute "insert into groups(name,parish_id,state) values('Jesus de Challa (Aramasi)',44,true);"
    execute "insert into groups(name,parish_id,state) values('Cristo de Ramadas (Ramadas)',45,true);"
    execute "insert into groups(name,parish_id,state) values('San Bartolome (Bolivar)',46,true);"
    #vicaria Valle Alto
    execute "insert into groups(name,parish_id,state) values('Apostol Santiago (Anzaldo)',47,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Sra. Maria y SAP (Tolata)',48,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora de las Nieves (Santivañez)',49,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora del Carmen (Cliza)',50,true);"
    execute "insert into groups(name,parish_id,state) values('San Antonio de Padua',51,true);"
    execute "insert into groups(name,parish_id,state) values('San Bartolome (Arani)',52,true);"
    execute "insert into groups(name,parish_id,state) values('San Benito (V. de Mendoza)',53,true);"
    execute "insert into groups(name,parish_id,state) values('San Juan Bautista (Punata)',54,true);"
    execute "insert into groups(name,parish_id,state) values('San Pedro (Tarata)',55,true);"
    execute "insert into groups(name,parish_id,state) values('Santa Barbara (Vacas)',56,true);"
    execute "insert into groups(name,parish_id,state) values('San Miguel (Toco)',57,true);"
    execute "insert into groups(name,parish_id,state) values('San Isidoro (Villa Rivero)',58,true);"
    execute "insert into groups(name,parish_id,state) values('Nuestra Señora del Rosario (Vinto)',59,true);"
    execute "insert into groups(name,parish_id,state) values('San Ildefonso y Santuario Nuestra Señora de Urkupiña',60,true);"
    execute "insert into groups(name,parish_id,state) values('San Lorenzo (Colcapirhua)',61,true);"
    execute "insert into groups(name,parish_id,state) values('San Miguel (Tiquipaya)',62,true);"
    execute "insert into groups(name,parish_id,state) values('Santiago (El Paso)',63,true);"
    execute "insert into groups(name,parish_id,state) values('Santisima Trinidad (Quillacollo)',64,true);"
    execute "insert into groups(name,parish_id,state) values('San Juan Baptista (Itapaya)',65,true);"
    execute "insert into groups(name,parish_id,state) values('San Pedro (Sipe Sipe)',66,true);"
    execute "insert into groups(name,parish_id,state) values('Cruz Gloriosa',67,true);"
    #vicaria Sacaba
    execute "insert into groups(name,parish_id,state) values('San Pedro (Sacaba)',68,true);"
    execute "insert into groups(name,parish_id,state) values('San Isidro (Colomi)',69,true);"
    execute "insert into groups(name,parish_id,state) values('Virgen de los Angeles (Melga)',70,true);"
    execute "insert into groups(name,parish_id,state) values('Virgen de Guadalupe (Huayllani)',71,true);"
    #vicaria Chapare
    execute "insert into groups(name,parish_id,state) values('Exaltacion (Chipiriri)',72,true);"
    execute "insert into groups(name,parish_id,state) values('San Antonio de Padua (Villa Tunari)',73,true);"
    execute "insert into groups(name,parish_id,state) values('Santisima Trinidad (Isiboro)',74,true);"
    execute "insert into groups(name,parish_id,state) values('Virgen del Rosario (Eterazama)',75,true);"

  end

  def self.down
  end
end
