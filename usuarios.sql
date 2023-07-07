drop table if exists usuarios;

create table usuarios (
	idUsuario int unsigned not null auto_increment primary key,
	email varchar(75) not null,
	password varchar(1000) not null,
	token varchar(500) not null,
	roles_idRol int unsigned not null,
	index (roles_idRol),
	foreign key (roles_idRol) references roles(idRol)
) ENGINE = INNODB;