class InsertandoDatosDeParroquias < ActiveRecord::Migration
  def self.up
    #vicaria centro
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Madre de la Divina Provinencia (Hospicio)','Plaza Colon acera Sur','dato no suministrado',4222610,1,3,'Maria Ali Calisaya','4660778-76927424',true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Santo Domingo','Av. Ayacucho esquina Santivañes','dato no suministrado',0,2,3,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Ignacio de Loyola (Compañia de Jesus)','C. Baptista esquina General Acha','dato no suministrado',4228474,3,3,'Dra. Ruth Valdez','71896110',true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Jose (San Juan de Dios)','C. Esteban Arze entre Calama y Ladislao Cabrera','dato no suministrado',4227774,4,3,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Pedro','Av. Heroinas y Parque La Torre, acera oeste','dato no suministrado',4233857,5,3,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Virgen del Carmen','Av. Ramon Rivero lado Unidad Educativa del Ejercito','dato no suministrado',4530275,6,3,' ',0,true,'En Contacto');"
    #vicaria Norte
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Madre del Verbo Divino','Av. Juan de la Rosa a una cuadra al Este del cruce con la Av. Melchor Perez','dato no suministrado',4280691,7,4,'Estanislao Rodriguez',4421991,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora de Guadalupe','paralela al este de la Av. Centenario a dos cuadras al Norte de la Av. Circunvalacion','dato no suministrado',4288527,8,4,'Estela Zeballos',4288527,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora de Anunciacion','Zona Condebamba','dato no suministrado',4285335,9,4,'Lic. Silvia Revollo',79376706,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Santa Monica','a dos cuadras al norte del puente Pinto y Av. Simon Lopez','dato no suministrado',4281264,10,4,'Diacono Carlos Peralta',4296833,true,'En Contacto');"
    #vicaria Nor Este
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Virgen del Carmen y San Maximiliano Kolbe (Quintanilla)','Carretera a Sacaba km 4, dos cuadras al Sud','dato no suministrado',4721733,11,5,'Hna. Cecilia Coñaca',72286729,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestro Señor de Exaltacion (Recoleta)','Plazuela Recoleta, acera norte','dato no suministrado',4242764,12,5,'Diacono Juan Carlos Guardia',4510527,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Santa Ana (Cala Cala)','Plazuela de Cala Cala, acera norte','dato no suministrado',4297168,13,5,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Divino Maestro','C. Calancha, lado Federacion de Periodistas, detras del estadio','dato no suministrado',4241999,14,5,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora de las Gracias y Beato Edmundo Boyanowski','Pacata Alta, final de la calle 4','dato no suministrado',4493754,15,5,' ',0,true,'En Contacto');"
    #vicaria Nor Oeste
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Cristo Rey','detras del mercado Ingavi, en la paralela oeste de la Av. Peru','dato no suministrado','4240576',16,6,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora de La Merced','Av. Cap. Victor Ustariz km 3 1/2','dato no suministrado','4433153',17,6,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora de La Paz','a media cuadra del Colegio Eugenia Ravasco, a la altura de Coña Coña al Norte. Siguiendo la calle que pasa por el complejo EL Manantial','dato no suministrado','4310369-8 4433153',18,6,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Parroquia San Gerardo','dato no suministrado','dato no suministrado',0,19,6,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Inmaculado Corazon de Maria (Corazonistas)','Chimba','dato no suministrado','4251444-4448136',20,6,'Doña Lili Mancilla',4244194,true,'En Contacto');"
    #vicaria Sur Centro
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Antonio de Padua','Plaza San Antonio, acera Sud, zona La Cancha','dato no suministrado','4223626-4250333',21,7,'Noram Olivera',4250333,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Carlos Borromeo','C. Republica, a dos cuadras de la Av. 6 de Agosto, esquina parada a Tiraque','dato no suministrado',4229555,22,7,'',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Joaquin','a dos cuadras de la Av. 6 de Agosto (rotonda de avion), sobre la continuacion de la Av. Siles','dato no suministrado',4255726,23,7,'Julio Ugarte Ceveriche','4591579-79373387',true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Juan Bautista (Alalay)','Huayrakhasa, frente al biblioavion','dato no suministrado',4747618,24,7,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Rafael','paralela al Norte de la Av. 9 de Abril a una cuadra al Este del cruce con la Av. Belzu','dato no suministrado','4233282-4540717',25,7,'Demetria Saravia','70774947-72725187',true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Pio X','Zona Transito','dato no suministrado',4256568,26,7,' ',0,true,'En Contacto');"
    #vicaria Sur Este
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Virgen de Fatima','dato no suministrado','dato no suministrado','4217339-4237216',27,8,'',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora de La Salette','dato no suministrado','dato no suministrado','4216312-4251367',28,8,'Cleri Tarija',4217997,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Eugenio de Mazenod','Villa Pagador, acera Sud de la plaza de Villa Pagador','dato no suministrado','4755690-72273114',29,8,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Santa Vera Cruz','Av. Petrolera frente a la Refineria de YPFB','dato no suministrado','4762354-71279979',30,8,'Grace Guzman',4762275,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Maria del Camino','km 9 de la Av. Petrolera, pasando Santa Vera Cruz','dato no suministrado','4338544-4482669-71757895',31,8,'Lic. Karina Siles - Elisabeth Antezana','76452853-72744456',true,'En Contacto');"
    #vicaria Sur Oeste
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Maria Auxiliadora','Av. Panamericana, zona Loreto','dato no suministrado','4238530-4735375',32,9,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Cuasi Parroquia Virgen del Socavon','Maica Central','micro P',0,33,9,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Cuasi Parroquia Don Bosco','Ex Villa Mexico, al sur de Loreto','dato no suministrado',4734460,34,9,' ',0,true,'En Contacto');"
    #vicaria Ayopaya
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora del Rosario (Cocapata)','dato no suministrado','dato no suministrado','4540486-44137033',35,10,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Francisco de Asis (Independencia)','dato no suministrado','dato no suministrado',44136191,36,10,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Jose Obrero (Kami)','dato no suministrado','dato no suministrado',44136287,37,10,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Bartolome (Morochata)','dato no suministrado','dato no suministrado',4351034,38,10,' ',0,true,'En Contacto');"
    #vicaria Capinota
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Augustin (Tapacari)','dato no suministrado','dato no suministrado',44135679,39,1,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Antonio de Padua (Arque)','dato no suministrado','dato no suministrado','44137058-4138006',40,1,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Juan Bautista (Tacopaya)','dato no suministrado','dato no suministrado',71471326,40,1,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Pablo Apostol (Capinota)','dato no suministrado','dato no suministrado',4389197,41,1,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Juan Bautista (Itapaya)','dato no suministrado','dato no suministrado',79966565,41,1,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Jesus de Challa (Aramasi)','dato no suministrado','dato no suministrado',4289932,42,1,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Cristo de Ramadas (Ramadas)','dato no suministrado','dato no suministrado','4289932-71733716',42,1,'Isidoro Mamani',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Bartolome (Bolivar)','dato no suministrado','dato no suministrado',44137755,43,1,' ',0,true,'En Contacto');"
    #vicaria Valle Alto
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Apostol Santiago (Anzaldo)','dato no suministrado','dato no suministrado',44136101,44,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Sra. Maria y SAP (Tolata)','dato no suministrado','dato no suministrado','4575712-71471492',45,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora de las Nieves (Santivañez)','dato no suministrado','dato no suministrado','4402745-4241041',46,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora del Carmen (Cliza)','dato no suministrado','dato no suministrado',4575176,47,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Antonio de Padua','dato no suministrado','dato no suministrado','4570004-4221129',48,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Bartolome (Arani)','dato no suministrado','dato no suministrado','4576124-71461561',49,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Benito (V. de Mendoza)','dato no suministrado','dato no suministrado','4579098-72255786',50,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Juan Bautista (Punata)','dato no suministrado','dato no suministrado',4577020,51,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Pedro (Tarata)','dato no suministrado','dato no suministrado',4578424,52,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Santa Barbara (Vacas)','dato no suministrado','dato no suministrado','44135699-72255786',53,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Miguel (Toco)','dato no suministrado','dato no suministrado',4574197,54,2,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Isidoro (Villa Rivero)','dato no suministrado','dato no suministrado',4570594,55,2,' ',0,true,'En Contacto');"
    #vicaria Valle Bajo
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Nuestra Señora del Rosario (Vinto)','dato no suministrado','dato no suministrado','4260327-71782816',56,13,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Ildefonso y Santuario Nuestra Señora de Urkupiña','dato no suministrado','dato no suministrado',4260185,57,13,'Hna. Casilda Quispe',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Lorenzo (Colcapirhua)','dato no suministrado','dato no suministrado','4378040-77973908',58,13,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Miguel (Tiquipaya)','dato no suministrado','dato no suministrado',4315682,59,13,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Santiago (El Paso)','dato no suministrado','dato no suministrado','4319049-4319674-71769569',60,13,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Santisima Trinidad (Quillacollo)','dato no suministrado','dato no suministrado',4264990,61,13,'Gregorio Choque',4264990,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Juan Baptista (Itapaya)','dato no suministrado','dato no suministrado',79712616,72,13,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Pedro (Sipe Sipe)','dato no suministrado','dato no suministrado','4380539-71798363',62,13,'Litzi',79756766,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Cruz Gloriosa','Entrando al norte por la rotonda de la Cruz en la Av. Blanco Galindo, casi km 1','dato no suministrado','4531071-4264954',63,13,'Diacono Jose Iglesias',4350836,true,'En Contacto');"
    #vicaria Sacaba
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Pedro (Sacaba)','dato no suministrado','dato no suministrado',4701041,64,12,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Isidro (Colomi)','dato no suministrado','dato no suministrado',4340540,65,12,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Virgen de los Angeles (Melga)','dato no suministrado','dato no suministrado',77497997,73,12,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Virgen de Guadalupe (Huayllani)','dato no suministrado','dato no suministrado','4712042-77944480',73,12,' ',0,true,'En Contacto');"
    #vicaria Chapare
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Exaltacion (Chipiriri)','dato no suministrado','dato no suministrado',71763395,66,11,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('San Antonio de Padua (Villa Tunari)','dato no suministrado','dato no suministrado',44136507,67,11,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Santisima Trinidad (Isiboro)','dato no suministrado','dato no suministrado',71734417,68,11,' ',0,true,'En Contacto');"
    execute "insert into parishes(parish_name,ubication,transport,telephone,pastor_id,vicariou_id,contact,contact_telephone,state,current_state) values('Virgen del Rosario (Eterazama)','dato no suministrado','dato no suministrado',71734077,69,11,' ',0,true,'En Contacto');"

  end

  def self.down
  end
end