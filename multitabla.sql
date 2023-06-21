insert into
	clientes (nombre, poblacion, telefono)
values
	(
		'Luis Bárcenas',
		'Soto del Real',
		'600000000'
	);

-- visualizar todos los viajes de cada mayorista, mostrando los campos nombre, precio, duración y nombre del mayorista:
select
	viajes.nombre,
	viajes.precio,
	viajes.duracion,
	mayoristas.nombre as mayorista
from
	viajes
	inner join mayoristas on (viajes.idmayorista = mayoristas.idmayorista);

-- Visualizar viajes vendidos con datos de clientes, además de salir el nuevo cliente que no ha comprado viajes.
select
	clientes.nombre,
	viajes.nombre as 'se va a',
	viajes.duracion as días,
	viajes.precio as 'ha pagado'
from
	clientes
	left join ventas on clientes.idcliente = ventas.idcliente
	left join viajes on ventas.idviaje = viajes.idviaje;
/* La misma consulta base con el right join */
select
	clientes.nombre,
	ventas.idviaje
from
	ventas
	right join clientes on ventas.idcliente = clientes.idcliente;

-- visualizar todos los viajes con los datos de los clientes que los han adquiridos, así como los nombres de esos viajes y su precio.
/*
 Viajes con los clientes que los han adquirido.
 */
SELECT
	viajes.nombre,
	viajes.precio,
	clientes.nombre as 'vendido a'
FROM
	ventas,
	clientes,
	viajes
WHERE
	ventas.idcliente = clientes.idcliente
	AND ventas.idviaje = viajes.idviaje;