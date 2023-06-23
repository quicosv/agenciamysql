create table pruebas (
	id int unsigned not null auto_increment primary key,
	nombre varchar(50),
	edad tinyint unsigned,
	poblacion varchar(70)
);
insert into pruebas (nombre,edad,poblacion) values
('Raúl',23,'Bilbao'),
('Eva',15,'Pamplona'),
('Nabucodonosor',254,'Babilonia'),
('Andrea',13,'Madrid'),
('Genaro',84,'Bilbao'),
('Caín',97,'Buenos Aires'),
('Rafael',37,'Manacor'),
('Bilal',38,'Ceuta'),
('Emilio',43,'Pamplona'),
('Jaime',30,'Bilbao');
replace into pruebas values (
	4,'Jon',17,'Bilbao'
);
update pruebas set edad=25 where id=8;
delete from pruebas where id=10;
select @edadJoven:=min(edad) from pruebas;
delete from pruebas where edad=@edadJoven;
select nombre,edad from pruebas;
select distinct edad from pruebas;
select * from pruebas order by edad desc limit 1;
select * from pruebas where poblacion='Pamplona' order by edad desc;
select * from pruebas where poblacion='Bilbao' and edad>=18 order by nombre;
select poblacion, avg(edad) as EdadMedia from pruebas group by poblacion;