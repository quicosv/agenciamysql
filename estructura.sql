-- Creamos la base de datos
create database agencia;

-- Nos cambiamos a esa base de datos
use agencia;

-- Tabla de mayoristas
create table mayoristas (
	idmayorista int unsigned not null auto_increment primary key,
	nommbre varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci,
	telefono char(9) CHARACTER SET utf8 COLLATE utf8_spanish_ci,
	direccion varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci,
	contacto varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci
) ENGINE = INNODB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

-- Tabla de viajes
create table viajes (
	idviaje int unsigned auto_increment primary key,
	duracion tinyint unsigned,
	nombre varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci,
	precio decimal(7, 2),
	idmayorista int unsigned,
	index (idmayorista),
	foreign key (idmayorista) references mayoristas(idmayorista)
) -- Tabla clientes
create table clientes (
	idcliente int unsigned not null auto_increment primary key,
	nombre varchar(30) not null,
	poblacion varchar(40) not null,
	telefono char(9) not null
) ENGINE = INNODB;

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