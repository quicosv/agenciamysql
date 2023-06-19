-- Cambiar nombre del segundo mayorista
update mayoristas set nombre="timotours" where idmayorista=2;
-- Insertar un mayorista
insert into mayoristas (
	default,
	"Corruptours",
	"654321000",
	"Calle La Cárcel 32",
	"Sevilla",
	"Bárcenas"
);
-- Eliminar al mayorista recién insertado por el nombre
delete from mayoristas where nombre="Corruptours";
-- Nombre y teléfono de los mayoristas
select nombre,telefolno from mayoristas;
-- El viaje más caro
select * from viajes order by precio desc limit 1;
-- Viajes de más de 6 días que cuesten más de 1000 euros
select * from viajes where duracion>6 and precio>1000;
-- Clientes de Barcelona ordenados por nombre
select * from clientes where ciudad="Barcelona" order by nombre;
