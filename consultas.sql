-- Cambiar nombre del segundo mayorista
update
	mayoristas
set
	nombre = 'timotours'
where
	idmayorista = 2;

-- Insertar un mayorista
insert into
	mayoristas
values
	(
		default,
		'Corruptours',
		'654321000',
		'Calle La Cárcel 32, Sevilla',
		'Bárcenas'
	);

-- Eliminar al mayorista recién insertado por el nombre
delete from
	mayoristas
where
	nombre = 'Corruptours';

-- Nombre y teléfono de los mayoristas
select
	nombre,
	telefono
from
	mayoristas;

-- El viaje más caro
select
	*
from
	viajes
order by
	precio desc
limit
	1;

-- Viajes de más de 6 días que cuesten más de 1000 euros
select
	*
from
	viajes
where
	duracion > 6
	and precio > 1000;

-- Clientes de Barcelona ordenados por nombre
select
	*
from
	clientes
where
	poblacion = 'Barcelona'
order by
	nombre;

-- Cantidad de viajes y precio medio
SELECT
	COUNT(*) AS cantidadViajes,
	AVG(precio) as PrecioMedio
from
	viajes;

-- Viajes entre 1000 y 5000 euros
select
	*
from
	viajes
where
	precio between 1000
	and 5000;

-- Clientes de málaga y Granada
select
	*
from
	clientes
where
	poblacion in('Málaga', 'Granada');

-- Clientes cuyo nombre empieza por Ma
select
	*
from
	clientes
where
	nombre like 'Ma%';

-- Clientes cuya ciudad termina con a
select
	*
from
	clientes
where
	poblacion like '%a';