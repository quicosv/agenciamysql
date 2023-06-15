-- Borramos la base de datos si existe
drop database if exists agencia;

-- Creamos la base de datos
create database agencia;

-- Modificamos la codificación de la base de datos a UTF8
ALTER DATABASE agencia CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

show warnings;

-- Nos cambiamos a esa base de datos
use agencia;

show warnings;

-- Tabla de mayoristas
create table mayoristas (
	idmayorista int unsigned not null auto_increment primary key,
	nommbre varchar(20),
	telefono char(9),
	direccion varchar(50),
	contacto varchar(20)
) ENGINE = INNODB;

show warnings;

-- Tabla de viajes
create table viajes (
	idviaje int unsigned auto_increment primary key,
	duracion tinyint unsigned,
	nombre varchar(20),
	precio decimal(7, 2),
	idmayorista int unsigned,
	index (idmayorista),
	foreign key (idmayorista) references mayoristas(idmayorista)
);

show warnings;

-- Tabla clientes
create table clientes (
	idcliente int unsigned not null auto_increment primary key,
	nombre varchar(30) not null,
	poblacion varchar(40) not null,
	telefono char(9) not null
) ENGINE = INNODB;

show warnings;

-- Tabla ventas
create table ventas (
	idventa int unsigned not null auto_increment primary key,
	idcliente int unsigned not null,
	fechasalida date,
	idviaje int unsigned not null,
	segurocancelacion bit(1),
	index (idcliente),
	foreign key (idcliente) references clientes(idcliente),
	index(idviaje),
	foreign key (idviaje) references viajes(idviaje)
);

show warnings;