drop table if exists usuarios;

create table usuarios (
	idUsuario int unsigned not null auto_increment primary key,
	email nvarchar(75) not null,
	password nvarchar(1000) not null,
	token nvarchar(500) not null,
	roles_idRol int unsigned not null,
	index (roles_idRol),
	foreign key (roles_idRol) references roles(idRol)
) ENGINE = INNODB;

-- Insertar los usuarios
INSERT INTO
	usuarios (email, password, token, roles_idRol)
VALUES
	('quico@google.com', '123456', '', 1),
	('bilal@google.com', '123456', '', 2),
	('javi@google.com', '123456', '', 2),