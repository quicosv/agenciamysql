create table pruebas (
	id int unsigned not null auto_increment primary key,
	nombre varchar(50),
	edad tinyint unsigned,
	poblacion varchar(70)
);
insert into pruebas (nombre,edad,poblacion) values
('Raúl',23,'Cádiz'),
('Eva',15,'Pamplona'),
('Nabucodonosor',254,'Babilonia'),
('Andrea',13,'Madrid'),
('Genaro',84,'Málaga'),
('Caín',97,'Buenos Aires'),
('Rafael',37,'Manacor'),
('Bilal',38,'Ceuta'),
('Emilio',43,'La Nucía'),
('Jaime',30,'Valencia');
replace into pruebas values (
	4,'Juan Luis',50,'Pamplona'
);
update pruebas set edad=25 where id=8;
delete from pruebas where id=10;
